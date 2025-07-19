import { useState, useEffect } from 'react'
import { Button } from '@/components/ui/button.jsx'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card.jsx'
import { Badge } from '@/components/ui/badge.jsx'
import { Progress } from '@/components/ui/progress.jsx'
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs.jsx'
import { Sword, Shield, Zap, Palette, Users, Coins, Bug, User, Bot, Swords, ShoppingCart, Star, Crown } from 'lucide-react'
import './App.css'

// Definição das classes e suas características
const classData = {
  // Classes Básicas
  yellow: {
    name: 'Amarelo',
    type: 'Velocidade',
    color: '#FFD700',
    icon: Zap,
    stats: { speed: 100, defense: 20, attack: 40 },
    description: 'Classe focada em velocidade extrema e mobilidade',
    tier: 'basic'
  },
  blue: {
    name: 'Azul',
    type: 'Defesa',
    color: '#0066CC',
    icon: Shield,
    stats: { speed: 20, defense: 100, attack: 40 },
    description: 'Classe focada em resistência e proteção',
    tier: 'basic'
  },
  red: {
    name: 'Vermelho',
    type: 'Ataque',
    color: '#CC0000',
    icon: Sword,
    stats: { speed: 40, defense: 20, attack: 100 },
    description: 'Classe focada em poder ofensivo',
    tier: 'basic'
  },
  // Subclasses
  orange: {
    name: 'Laranja',
    type: 'Ataque/Velocidade',
    color: '#FF8C00',
    icon: Sword,
    stats: { speed: 50, defense: 20, attack: 50 },
    description: '50% Ataque + 50% Velocidade',
    tier: 'sub'
  },
  purple: {
    name: 'Roxo',
    type: 'Defesa/Ataque',
    color: '#8A2BE2',
    icon: Shield,
    stats: { speed: 20, defense: 50, attack: 50 },
    description: '50% Defesa + 50% Ataque',
    tier: 'sub'
  },
  green: {
    name: 'Verde',
    type: 'Defesa/Velocidade',
    color: '#228B22',
    icon: Zap,
    stats: { speed: 50, defense: 50, attack: 20 },
    description: '50% Defesa + 50% Velocidade',
    tier: 'sub'
  },
  // Sub-Subclasses (Cores Terciárias)
  yellowOrange: {
    name: 'Amarelo Alaranjado',
    type: 'Velocidade Extrema',
    color: '#FFCC00',
    icon: Zap,
    stats: { speed: 75, defense: 12, attack: 25 },
    description: '50% Velocidade + 25% Velocidade + 25% Ataque',
    tier: 'tertiary'
  },
  redOrange: {
    name: 'Vermelho Alaranjado',
    type: 'Ataque Extremo',
    color: '#FF4500',
    icon: Sword,
    stats: { speed: 25, defense: 12, attack: 75 },
    description: '50% Ataque + 25% Velocidade + 25% Ataque',
    tier: 'tertiary'
  },
  redPurple: {
    name: 'Vermelho Arroxeado',
    type: 'Ataque Fortificado',
    color: '#B22222',
    icon: Sword,
    stats: { speed: 20, defense: 25, attack: 75 },
    description: '50% Ataque + 25% Defesa + 25% Ataque',
    tier: 'tertiary'
  },
  bluePurple: {
    name: 'Azul Arroxeado',
    type: 'Defesa Extrema',
    color: '#4169E1',
    icon: Shield,
    stats: { speed: 12, defense: 75, attack: 25 },
    description: '50% Defesa + 25% Defesa + 25% Ataque',
    tier: 'tertiary'
  },
  blueGreen: {
    name: 'Azul Esverdeado',
    type: 'Defesa Móvel',
    color: '#008B8B',
    icon: Shield,
    stats: { speed: 25, defense: 75, attack: 12 },
    description: '50% Defesa + 25% Velocidade + 25% Defesa',
    tier: 'tertiary'
  },
  yellowGreen: {
    name: 'Amarelo Esverdeado',
    type: 'Velocidade Resistente',
    color: '#9ACD32',
    icon: Zap,
    stats: { speed: 75, defense: 25, attack: 12 },
    description: '50% Velocidade + 25% Velocidade + 25% Defesa',
    tier: 'tertiary'
  },
  // Classes Divinas
  white: {
    name: 'Branco',
    type: 'Divina - Defesa Suprema',
    color: '#FFFFFF',
    icon: Shield,
    stats: { speed: 60, defense: 150, attack: 60 },
    description: 'Junção de todas as classes com foco extremo em defesa',
    tier: 'divine'
  },
  black: {
    name: 'Preto',
    type: 'Divina - Ataque Supremo',
    color: '#000000',
    icon: Sword,
    stats: { speed: 60, defense: 60, attack: 150 },
    description: 'Junção de todas as classes com foco extremo em ataque',
    tier: 'divine'
  },
  gray: {
    name: 'Cinza',
    type: 'Divina - Equilíbrio Perfeito',
    color: '#808080',
    icon: Palette,
    stats: { speed: 80, defense: 105, attack: 105 },
    description: 'Combinação de Branco e Preto - Equilíbrio supremo',
    tier: 'divine'
  }
}

// Definição das nações do multiverso
const nationsData = {
  insects: {
    name: 'Reino dos Insetos',
    icon: Bug,
    color: '#8B4513',
    bonuses: { speed: 1.2, production: 1.5, defense: 0.8 },
    description: 'Civilização ágil focada em números e produção rápida',
    resources: { biomass: 1000, chitin: 500 }
  },
  humans: {
    name: 'Federação Humana',
    icon: User,
    color: '#4169E1',
    bonuses: { speed: 1.0, production: 1.0, defense: 1.0, technology: 1.3 },
    description: 'Civilização equilibrada com foco em tecnologia e estratégia',
    resources: { metal: 800, energy: 600 }
  },
  robots: {
    name: 'Coletivo Robótico',
    icon: Bot,
    color: '#708090',
    bonuses: { speed: 0.7, production: 0.8, defense: 1.5, efficiency: 1.4 },
    description: 'Civilização resistente com alta eficiência energética',
    resources: { circuits: 600, power: 900 }
  }
}

// Sistema de mercado e comércio
const marketData = {
  fragments: {
    yellow: { price: 50, demand: 'high' },
    blue: { price: 50, demand: 'high' },
    red: { price: 50, demand: 'high' },
    orange: { price: 100, demand: 'medium' },
    purple: { price: 100, demand: 'medium' },
    green: { price: 100, demand: 'medium' }
  },
  resources: {
    biomass: { price: 2, demand: 'medium' },
    chitin: { price: 5, demand: 'low' },
    metal: { price: 3, demand: 'high' },
    energy: { price: 4, demand: 'high' },
    circuits: { price: 8, demand: 'low' },
    power: { price: 6, demand: 'medium' }
  }
}

// Componente para exibir uma classe
function ClassCard({ classKey, classInfo, isSelected, onSelect }) {
  const IconComponent = classInfo.icon
  const isDivine = classInfo.tier === 'divine'
  
  return (
    <Card 
      className={`cursor-pointer transition-all duration-300 hover:scale-105 ${
        isSelected ? 'class-card-selected' : ''
      } ${isDivine ? 'divine-aura' : ''} class-card`}
      onClick={() => onSelect(classKey)}
    >
      <CardHeader className="text-center">
        <div className="flex justify-center mb-2">
          <div 
            className={`w-16 h-16 rounded-full flex items-center justify-center ${
              isDivine ? 'divine-class' : ''
            }`}
            style={{ backgroundColor: classInfo.color }}
          >
            <IconComponent size={32} className="text-white drop-shadow-lg" />
            {isDivine && <Crown className="absolute top-0 right-0 w-4 h-4 text-yellow-300" />}
          </div>
        </div>
        <CardTitle className="text-lg" style={{ color: classInfo.color }}>
          {classInfo.name}
          {isDivine && <Star className="inline ml-1 w-4 h-4 text-yellow-400" />}
        </CardTitle>
        <CardDescription className="text-sm">
          {classInfo.description}
        </CardDescription>
      </CardHeader>
      <CardContent>
        <div className="space-y-3">
          <div className="flex justify-between items-center">
            <span className="text-sm font-medium">Velocidade</span>
            <span className="text-sm font-bold">{classInfo.stats.speed}</span>
          </div>
          <div className="stat-bar h-2 bg-gray-200 rounded-full overflow-hidden">
            <div 
              className="stat-bar-speed h-full transition-all duration-1000 ease-out"
              style={{ width: `${(classInfo.stats.speed / 150) * 100}%` }}
            ></div>
          </div>
          
          <div className="flex justify-between items-center">
            <span className="text-sm font-medium">Defesa</span>
            <span className="text-sm font-bold">{classInfo.stats.defense}</span>
          </div>
          <div className="stat-bar h-2 bg-gray-200 rounded-full overflow-hidden">
            <div 
              className="stat-bar-defense h-full transition-all duration-1000 ease-out"
              style={{ width: `${(classInfo.stats.defense / 150) * 100}%` }}
            ></div>
          </div>
          
          <div className="flex justify-between items-center">
            <span className="text-sm font-medium">Ataque</span>
            <span className="text-sm font-bold">{classInfo.stats.attack}</span>
          </div>
          <div className="stat-bar h-2 bg-gray-200 rounded-full overflow-hidden">
            <div 
              className="stat-bar-attack h-full transition-all duration-1000 ease-out"
              style={{ width: `${(classInfo.stats.attack / 150) * 100}%` }}
            ></div>
          </div>
        </div>
      </CardContent>
    </Card>
  )
}

// Componente principal do jogo
function GameInterface({ selectedClass }) {
  const [resources, setResources] = useState({
    fragments: {
      yellow: 0,
      blue: 0,
      red: 0,
      orange: 0,
      purple: 0,
      green: 0,
      yellowOrange: 0,
      redOrange: 0,
      redPurple: 0,
      bluePurple: 0,
      blueGreen: 0,
      yellowGreen: 0
    },
    energy: 100,
    coins: 1000,
    nationResources: {
      biomass: 0,
      chitin: 0,
      metal: 0,
      energy: 0,
      circuits: 0,
      power: 0
    }
  })
  
  const [playerStats, setPlayerStats] = useState({
    level: 1,
    experience: 0,
    maxExperience: 100,
    currentClass: selectedClass,
    selectedNation: 'humans'
  })

  const [gameState, setGameState] = useState({
    currentTab: 'battle',
    battleResults: [],
    tradeHistory: []
  })

  // Sistema de evolução - define quais fragmentos são necessários para cada evolução
  const evolutionRequirements = {
    // Evolução para subclasses
    orange: { fragments: { yellow: 25, red: 25 }, cost: 500 },
    purple: { fragments: { blue: 25, red: 25 }, cost: 500 },
    green: { fragments: { blue: 25, yellow: 25 }, cost: 500 },
    
    // Evolução para classes terciárias
    yellowOrange: { fragments: { green: 50 }, cost: 1000 },
    redOrange: { fragments: { orange: 50 }, cost: 1000 },
    redPurple: { fragments: { purple: 50 }, cost: 1000 },
    bluePurple: { fragments: { purple: 50 }, cost: 1000 },
    blueGreen: { fragments: { green: 50 }, cost: 1000 },
    yellowGreen: { fragments: { green: 50 }, cost: 1000 }
  }

  // Função para verificar se pode evoluir
  const canEvolve = (targetClass) => {
    const requirements = evolutionRequirements[targetClass]
    if (!requirements) return false
    
    // Verifica se tem fragmentos suficientes
    for (const [fragType, amount] of Object.entries(requirements.fragments)) {
      if (resources.fragments[fragType] < amount) return false
    }
    
    // Verifica se tem moedas suficientes
    if (resources.coins < requirements.cost) return false
    
    return true
  }

  // Função para evoluir
  const evolveClass = (targetClass) => {
    if (!canEvolve(targetClass)) return
    
    const requirements = evolutionRequirements[targetClass]
    
    // Consome os fragmentos e moedas
    setResources(prev => {
      const newFragments = { ...prev.fragments }
      for (const [fragType, amount] of Object.entries(requirements.fragments)) {
        newFragments[fragType] -= amount
      }
      
      return {
        ...prev,
        fragments: newFragments,
        coins: prev.coins - requirements.cost
      }
    })
    
    // Atualiza a classe do jogador
    setPlayerStats(prev => ({
      ...prev,
      currentClass: targetClass
    }))
  }

  // Função para obter fragmentos aleatórios baseados na classe atual
  const getRandomFragments = () => {
    const currentClassInfo = classData[playerStats.currentClass]
    const possibleFragments = []
    
    // Adiciona fragmentos baseados na classe atual
    if (currentClassInfo.tier === 'basic') {
      possibleFragments.push(playerStats.currentClass)
    } else if (currentClassInfo.tier === 'sub') {
      possibleFragments.push(playerStats.currentClass)
      // Adiciona fragmentos das classes básicas relacionadas
      if (playerStats.currentClass === 'orange') {
        possibleFragments.push('yellow', 'red')
      } else if (playerStats.currentClass === 'purple') {
        possibleFragments.push('blue', 'red')
      } else if (playerStats.currentClass === 'green') {
        possibleFragments.push('blue', 'yellow')
      }
    }
    
    const randomFragment = possibleFragments[Math.floor(Math.random() * possibleFragments.length)]
    const amount = Math.floor(Math.random() * 3) + 1
    
    return { [randomFragment]: amount }
  }

  // Função para batalhar contra outras nações
  const battleNation = (targetNation) => {
    const playerNation = nationsData[playerStats.selectedNation]
    const enemyNation = nationsData[targetNation]
    
    // Calcula resultado da batalha baseado nos bônus das nações
    const playerPower = playerNation.bonuses.defense + playerNation.bonuses.speed
    const enemyPower = enemyNation.bonuses.defense + enemyNation.bonuses.speed
    
    const victory = Math.random() * playerPower > Math.random() * enemyPower
    
    if (victory) {
      const rewards = {
        coins: Math.floor(Math.random() * 200) + 100,
        fragments: getRandomFragments(),
        resources: Object.keys(enemyNation.resources)[Math.floor(Math.random() * Object.keys(enemyNation.resources).length)]
      }
      
      setResources(prev => {
        const updatedFragments = { ...prev.fragments }
        Object.entries(rewards.fragments).forEach(([type, amount]) => {
          updatedFragments[type] += amount
        })
        
        const updatedNationResources = { ...prev.nationResources }
        updatedNationResources[rewards.resources] += Math.floor(Math.random() * 50) + 25
        
        return {
          ...prev,
          fragments: updatedFragments,
          coins: prev.coins + rewards.coins,
          nationResources: updatedNationResources,
          energy: Math.max(0, prev.energy - 15)
        }
      })
      
      setGameState(prev => ({
        ...prev,
        battleResults: [...prev.battleResults, {
          result: 'Vitória',
          enemy: enemyNation.name,
          rewards: rewards,
          timestamp: Date.now()
        }]
      }))
    } else {
      setResources(prev => ({
        ...prev,
        energy: Math.max(0, prev.energy - 15),
        coins: Math.max(0, prev.coins - 50)
      }))
      
      setGameState(prev => ({
        ...prev,
        battleResults: [...prev.battleResults, {
          result: 'Derrota',
          enemy: enemyNation.name,
          timestamp: Date.now()
        }]
      }))
    }
  }

  // Função para comercializar
  const tradeResource = (resourceType, amount, action) => {
    const price = marketData.resources[resourceType]?.price || marketData.fragments[resourceType]?.price || 0
    const totalCost = price * amount
    
    if (action === 'buy') {
      if (resources.coins >= totalCost) {
        setResources(prev => {
          const updated = { ...prev, coins: prev.coins - totalCost }
          
          if (marketData.resources[resourceType]) {
            updated.nationResources[resourceType] += amount
          } else if (marketData.fragments[resourceType]) {
            updated.fragments[resourceType] += amount
          }
          
          return updated
        })
        
        setGameState(prev => ({
          ...prev,
          tradeHistory: [...prev.tradeHistory, {
            action: 'Compra',
            resource: resourceType,
            amount: amount,
            cost: totalCost,
            timestamp: Date.now()
          }]
        }))
      }
    } else if (action === 'sell') {
      const currentAmount = resources.nationResources[resourceType] || resources.fragments[resourceType] || 0
      
      if (currentAmount >= amount) {
        setResources(prev => {
          const updated = { ...prev, coins: prev.coins + totalCost }
          
          if (marketData.resources[resourceType]) {
            updated.nationResources[resourceType] -= amount
          } else if (marketData.fragments[resourceType]) {
            updated.fragments[resourceType] -= amount
          }
          
          return updated
        })
        
        setGameState(prev => ({
          ...prev,
          tradeHistory: [...prev.tradeHistory, {
            action: 'Venda',
            resource: resourceType,
            amount: amount,
            profit: totalCost,
            timestamp: Date.now()
          }]
        }))
      }
    }
  }

  return (
    <div className="space-y-6">
      {/* Header com informações do jogador */}
      <Card>
        <CardHeader>
          <div className="flex justify-between items-center">
            <div>
              <CardTitle>Guerreiro {classData[playerStats.currentClass].name}</CardTitle>
              <CardDescription>
                Nível {playerStats.level} - {nationsData[playerStats.selectedNation].name}
              </CardDescription>
            </div>
            <div className="flex gap-4">
              <Badge variant="secondary">
                <Coins className="w-4 h-4 mr-1" />
                {resources.coins}
              </Badge>
              <Badge variant="secondary">
                <Palette className="w-4 h-4 mr-1" />
                {Object.values(resources.fragments).reduce((a, b) => a + b, 0)} Fragmentos
              </Badge>
            </div>
          </div>
        </CardHeader>
        <CardContent>
          <div className="space-y-2">
            <div className="flex justify-between">
              <span>Experiência</span>
              <span>{playerStats.experience}/{playerStats.maxExperience}</span>
            </div>
            <Progress value={(playerStats.experience / playerStats.maxExperience) * 100} />
            
            <div className="flex justify-between">
              <span>Energia</span>
              <span>{resources.energy}/100</span>
            </div>
            <Progress value={resources.energy} />
          </div>
        </CardContent>
      </Card>

      {/* Seleção de Nação */}
      <Card>
        <CardHeader>
          <CardTitle>Sua Nação</CardTitle>
          <CardDescription>Escolha sua civilização no multiverso</CardDescription>
        </CardHeader>
        <CardContent>
          <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
            {Object.entries(nationsData).map(([nationKey, nationInfo]) => {
              const IconComponent = nationInfo.icon
              const isSelected = playerStats.selectedNation === nationKey
              
              return (
                <div
                  key={nationKey}
                  className={`p-4 border rounded-lg cursor-pointer transition-all ${
                    isSelected ? 'border-blue-500 bg-blue-50' : 'border-gray-300 hover:border-gray-400'
                  }`}
                  onClick={() => setPlayerStats(prev => ({ ...prev, selectedNation: nationKey }))}
                >
                  <div className="flex items-center gap-3 mb-2">
                    <IconComponent size={24} style={{ color: nationInfo.color }} />
                    <h4 className="font-semibold">{nationInfo.name}</h4>
                  </div>
                  <p className="text-sm text-gray-600 mb-2">{nationInfo.description}</p>
                  <div className="text-xs">
                    <div>Velocidade: {(nationInfo.bonuses.speed * 100).toFixed(0)}%</div>
                    <div>Produção: {(nationInfo.bonuses.production * 100).toFixed(0)}%</div>
                    <div>Defesa: {(nationInfo.bonuses.defense * 100).toFixed(0)}%</div>
                  </div>
                </div>
              )
            })}
          </div>
        </CardContent>
      </Card>

      {/* Abas principais do jogo */}
      <Tabs value={gameState.currentTab} onValueChange={(tab) => setGameState(prev => ({ ...prev, currentTab: tab }))}>
        <TabsList className="grid w-full grid-cols-4">
          <TabsTrigger value="battle">Batalha</TabsTrigger>
          <TabsTrigger value="trade">Comércio</TabsTrigger>
          <TabsTrigger value="evolution">Evolução</TabsTrigger>
          <TabsTrigger value="resources">Recursos</TabsTrigger>
        </TabsList>

        {/* Aba de Batalha */}
        <TabsContent value="battle" className="space-y-4">
          <Card>
            <CardHeader>
              <CardTitle>Batalhas entre Nações</CardTitle>
              <CardDescription>Lute contra outras civilizações para obter recursos</CardDescription>
            </CardHeader>
            <CardContent>
              <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-4">
                {Object.entries(nationsData)
                  .filter(([key]) => key !== playerStats.selectedNation)
                  .map(([nationKey, nationInfo]) => {
                    const IconComponent = nationInfo.icon
                    
                    return (
                      <div key={nationKey} className="p-4 border rounded-lg">
                        <div className="flex items-center gap-3 mb-2">
                          <IconComponent size={24} style={{ color: nationInfo.color }} />
                          <h4 className="font-semibold">{nationInfo.name}</h4>
                        </div>
                        <p className="text-sm text-gray-600 mb-3">{nationInfo.description}</p>
                        <Button
                          onClick={() => battleNation(nationKey)}
                          disabled={resources.energy < 15}
                          className="w-full"
                        >
                          <Swords className="w-4 h-4 mr-2" />
                          Batalhar (-15 Energia)
                        </Button>
                      </div>
                    )
                  })}
              </div>
              
              {/* Resultados de batalha */}
              {gameState.battleResults.length > 0 && (
                <div className="mt-4">
                  <h4 className="font-semibold mb-2">Últimas Batalhas</h4>
                  <div className="space-y-2 max-h-32 overflow-y-auto">
                    {gameState.battleResults.slice(-3).map((result, index) => (
                      <div key={index} className={`p-2 rounded text-sm ${
                        result.result === 'Vitória' ? 'bg-green-100 text-green-800' : 'bg-red-100 text-red-800'
                      }`}>
                        {result.result} contra {result.enemy}
                        {result.rewards && (
                          <span className="ml-2">
                            (+{result.rewards.coins} moedas)
                          </span>
                        )}
                      </div>
                    ))}
                  </div>
                </div>
              )}
            </CardContent>
          </Card>
        </TabsContent>

        {/* Aba de Comércio */}
        <TabsContent value="trade" className="space-y-4">
          <Card>
            <CardHeader>
              <CardTitle>Mercado Intergaláctico</CardTitle>
              <CardDescription>Compre e venda recursos e fragmentos</CardDescription>
            </CardHeader>
            <CardContent>
              <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                {/* Recursos */}
                <div>
                  <h4 className="font-semibold mb-3">Recursos</h4>
                  <div className="space-y-2">
                    {Object.entries(marketData.resources).map(([resourceType, data]) => (
                      <div key={resourceType} className="flex items-center justify-between p-2 border rounded">
                        <div>
                          <span className="font-medium capitalize">{resourceType}</span>
                          <div className="text-sm text-gray-600">
                            {data.price} moedas | Você tem: {resources.nationResources[resourceType] || 0}
                          </div>
                        </div>
                        <div className="flex gap-2">
                          <Button
                            size="sm"
                            variant="outline"
                            onClick={() => tradeResource(resourceType, 10, 'buy')}
                            disabled={resources.coins < data.price * 10}
                          >
                            Comprar 10
                          </Button>
                          <Button
                            size="sm"
                            variant="outline"
                            onClick={() => tradeResource(resourceType, 10, 'sell')}
                            disabled={(resources.nationResources[resourceType] || 0) < 10}
                          >
                            Vender 10
                          </Button>
                        </div>
                      </div>
                    ))}
                  </div>
                </div>

                {/* Fragmentos */}
                <div>
                  <h4 className="font-semibold mb-3">Fragmentos</h4>
                  <div className="space-y-2">
                    {Object.entries(marketData.fragments).map(([fragType, data]) => (
                      <div key={fragType} className="flex items-center justify-between p-2 border rounded">
                        <div>
                          <span className="font-medium">{classData[fragType]?.name}</span>
                          <div className="text-sm text-gray-600">
                            {data.price} moedas | Você tem: {resources.fragments[fragType] || 0}
                          </div>
                        </div>
                        <div className="flex gap-2">
                          <Button
                            size="sm"
                            variant="outline"
                            onClick={() => tradeResource(fragType, 5, 'buy')}
                            disabled={resources.coins < data.price * 5}
                          >
                            Comprar 5
                          </Button>
                          <Button
                            size="sm"
                            variant="outline"
                            onClick={() => tradeResource(fragType, 5, 'sell')}
                            disabled={(resources.fragments[fragType] || 0) < 5}
                          >
                            Vender 5
                          </Button>
                        </div>
                      </div>
                    ))}
                  </div>
                </div>
              </div>
            </CardContent>
          </Card>
        </TabsContent>

        {/* Aba de Evolução */}
        <TabsContent value="evolution" className="space-y-4">
          <Card>
            <CardHeader>
              <CardTitle>Evolução de Classe</CardTitle>
              <CardDescription>Colete fragmentos para evoluir sua classe</CardDescription>
            </CardHeader>
            <CardContent>
              <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                {Object.entries(evolutionRequirements).map(([targetClass, requirements]) => {
                  const canEvolveToThis = canEvolve(targetClass)
                  const targetClassInfo = classData[targetClass]
                  
                  return (
                    <div 
                      key={targetClass}
                      className={`p-4 border rounded-lg ${canEvolveToThis ? 'border-green-500 bg-green-50' : 'border-gray-300'}`}
                    >
                      <div className="flex justify-between items-center mb-2">
                        <h4 className="font-semibold" style={{ color: targetClassInfo.color }}>
                          {targetClassInfo.name}
                        </h4>
                        <Badge variant={canEvolveToThis ? "default" : "secondary"}>
                          {requirements.cost} moedas
                        </Badge>
                      </div>
                      
                      <div className="text-sm text-gray-600 mb-2">
                        Requisitos:
                      </div>
                      
                      {Object.entries(requirements.fragments).map(([fragType, needed]) => (
                        <div key={fragType} className="flex justify-between text-sm">
                          <span>{classData[fragType].name}:</span>
                          <span className={resources.fragments[fragType] >= needed ? 'text-green-600' : 'text-red-600'}>
                            {resources.fragments[fragType]}/{needed}
                          </span>
                        </div>
                      ))}
                      
                      <Button 
                        className="w-full mt-2"
                        size="sm"
                        disabled={!canEvolveToThis}
                        onClick={() => evolveClass(targetClass)}
                      >
                        Evoluir
                      </Button>
                    </div>
                  )
                })}
              </div>
            </CardContent>
          </Card>
        </TabsContent>

        {/* Aba de Recursos */}
        <TabsContent value="resources" className="space-y-4">
          <Card>
            <CardHeader>
              <CardTitle>Fragmentos Coletados</CardTitle>
            </CardHeader>
            <CardContent>
              <div className="grid grid-cols-3 md:grid-cols-6 gap-2">
                {Object.entries(resources.fragments).map(([fragType, amount]) => (
                  amount > 0 && (
                    <div key={fragType} className="text-center">
                      <div 
                        className="w-8 h-8 rounded-full mx-auto mb-1"
                        style={{ backgroundColor: classData[fragType]?.color || '#666' }}
                      ></div>
                      <div className="text-xs">{classData[fragType]?.name || fragType}</div>
                      <div className="text-xs font-bold">{amount}</div>
                    </div>
                  )
                ))}
              </div>
            </CardContent>
          </Card>

          <Card>
            <CardHeader>
              <CardTitle>Recursos da Nação</CardTitle>
            </CardHeader>
            <CardContent>
              <div className="grid grid-cols-2 md:grid-cols-3 gap-4">
                {Object.entries(resources.nationResources).map(([resourceType, amount]) => (
                  amount > 0 && (
                    <div key={resourceType} className="text-center p-3 border rounded">
                      <div className="font-semibold capitalize">{resourceType}</div>
                      <div className="text-2xl font-bold text-blue-600">{amount}</div>
                    </div>
                  )
                ))}
              </div>
            </CardContent>
          </Card>
        </TabsContent>
      </Tabs>

      {/* Ações básicas do jogo */}
      <div className="grid grid-cols-1 md:grid-cols-3 gap-4 mt-6">
        <Button 
          className="h-20 text-lg"
          onClick={() => {
            const newFragments = getRandomFragments()
            setResources(prev => {
              const updatedFragments = { ...prev.fragments }
              Object.entries(newFragments).forEach(([type, amount]) => {
                updatedFragments[type] += amount
              })
              
              return {
                ...prev,
                fragments: updatedFragments,
                energy: Math.max(0, prev.energy - 10)
              }
            })
            setPlayerStats(prev => ({
              ...prev,
              experience: prev.experience + 10
            }))
          }}
          disabled={resources.energy < 10}
        >
          <div className="text-center">
            <Sword className="w-6 h-6 mx-auto mb-1" />
            <div>Treinar</div>
            <div className="text-xs opacity-70">-10 Energia</div>
          </div>
        </Button>
        
        <Button 
          variant="outline"
          className="h-20 text-lg"
          onClick={() => {
            setResources(prev => ({
              ...prev,
              coins: prev.coins + Math.floor(Math.random() * 50) + 25,
              energy: Math.max(0, prev.energy - 5)
            }))
          }}
          disabled={resources.energy < 5}
        >
          <div className="text-center">
            <Coins className="w-6 h-6 mx-auto mb-1" />
            <div>Coletar Recursos</div>
            <div className="text-xs opacity-70">-5 Energia</div>
          </div>
        </Button>
        
        <Button 
          variant="outline"
          className="h-20 text-lg"
          onClick={() => {
            setResources(prev => ({
              ...prev,
              energy: Math.min(100, prev.energy + 25)
            }))
          }}
        >
          <div className="text-center">
            <Zap className="w-6 h-6 mx-auto mb-1" />
            <div>Descansar</div>
            <div className="text-xs opacity-70">+25 Energia</div>
          </div>
        </Button>
      </div>
    </div>
  )
}

function App() {
  const [selectedClass, setSelectedClass] = useState(null)
  const [gameStarted, setGameStarted] = useState(false)

  if (gameStarted && selectedClass) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-purple-900 via-blue-900 to-indigo-900 p-4">
        <div className="max-w-6xl mx-auto">
          <div className="flex justify-between items-center mb-6">
            <h1 className="text-3xl font-bold text-white">Color Class Warriors</h1>
            <Button 
              variant="outline" 
              onClick={() => {
                setGameStarted(false)
                setSelectedClass(null)
              }}
            >
              Voltar à Seleção
            </Button>
          </div>
          <GameInterface selectedClass={selectedClass} />
        </div>
      </div>
    )
  }

  return (
    <div className="min-h-screen cosmic-background p-4">
      <div className="max-w-6xl mx-auto">
        <div className="text-center mb-8">
          <h1 className="text-4xl md:text-4xl lg:text-5xl font-bold text-white mb-4">
            Color Class Warriors
          </h1>
          <p className="text-xl md:text-xl lg:text-2xl text-gray-300 mb-2">Multiverse Edition</p>
          <p className="text-gray-400 text-sm md:text-base">
            Escolha sua classe e domine o multiverso através de batalhas épicas e evolução estratégica
          </p>
        </div>

        <Tabs defaultValue="basic" className="w-full">
          <TabsList className="grid w-full grid-cols-4 mobile-tab">
            <TabsTrigger value="basic" className="mobile-button">Básicas</TabsTrigger>
            <TabsTrigger value="sub" className="mobile-button">Subclasses</TabsTrigger>
            <TabsTrigger value="tertiary" className="mobile-button">Terciárias</TabsTrigger>
            <TabsTrigger value="divine" className="mobile-button">Divinas</TabsTrigger>
          </TabsList>
          
          <TabsContent value="basic" className="space-y-6 tab-content">
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 md:gap-6 mobile-grid">
              {Object.entries(classData)
                .filter(([key, classInfo]) => classInfo.tier === 'basic')
                .map(([key, classInfo]) => (
                  <ClassCard
                    key={key}
                    classKey={key}
                    classInfo={classInfo}
                    isSelected={selectedClass === key}
                    onSelect={setSelectedClass}
                  />
                ))}
            </div>
          </TabsContent>
          
          <TabsContent value="sub" className="space-y-6 tab-content">
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 md:gap-6 mobile-grid">
              {Object.entries(classData)
                .filter(([key, classInfo]) => classInfo.tier === 'sub')
                .map(([key, classInfo]) => (
                  <ClassCard
                    key={key}
                    classKey={key}
                    classInfo={classInfo}
                    isSelected={selectedClass === key}
                    onSelect={setSelectedClass}
                  />
                ))}
            </div>
          </TabsContent>
          
          <TabsContent value="tertiary" className="space-y-6 tab-content">
            <div className="text-center mb-4">
              <p className="text-gray-300 text-sm md:text-base">
                Classes Terciárias - Especialização extrema em uma característica
              </p>
            </div>
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 mobile-grid">
              {Object.entries(classData)
                .filter(([key, classInfo]) => classInfo.tier === 'tertiary')
                .map(([key, classInfo]) => (
                  <ClassCard
                    key={key}
                    classKey={key}
                    classInfo={classInfo}
                    isSelected={selectedClass === key}
                    onSelect={setSelectedClass}
                  />
                ))}
            </div>
          </TabsContent>
          
          <TabsContent value="divine" className="space-y-6 tab-content">
            <div className="text-center mb-4">
              <p className="text-yellow-300 text-lg md:text-xl font-semibold">
                ⚡ Classes Divinas ⚡
              </p>
              <p className="text-gray-300 text-sm md:text-base">
                O ápice da evolução - Não alcançadas por evolução tradicional
              </p>
            </div>
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 md:gap-6 mobile-grid">
              {Object.entries(classData)
                .filter(([key, classInfo]) => classInfo.tier === 'divine')
                .map(([key, classInfo]) => (
                  <ClassCard
                    key={key}
                    classKey={key}
                    classInfo={classInfo}
                    isSelected={selectedClass === key}
                    onSelect={setSelectedClass}
                  />
                ))}
            </div>
          </TabsContent>
        </Tabs>

        {selectedClass && (
          <div className="mt-8 text-center mobile-spacing">
            <Button 
              size="lg" 
              onClick={() => setGameStarted(true)}
              className="text-lg px-8 py-4 mobile-button touch-target"
              style={{ backgroundColor: classData[selectedClass].color }}
            >
              Iniciar Jornada como {classData[selectedClass].name}
            </Button>
          </div>
        )}
      </div>
    </div>
  )
}

export default App

