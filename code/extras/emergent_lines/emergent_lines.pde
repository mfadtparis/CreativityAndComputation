int TOTAL = 150;
int MAX_DIST = 50;

ArrayList<Agent>agents;

void setup()
{
  size(600,600);
  agents = new ArrayList();
  
  for( int i = 0; i < TOTAL; i++)
    agents.add(new Agent());

}

void draw()
{
  smooth();
  background(255);
  strokeWeight(2);
  
  for( int i = 0; i < agents.size(); i++){
    Agent myAgent = agents.get(i);
    myAgent.update();
  }
  
  
  for( int i = 0; i < agents.size(); i++){  

    for( int j = 0; j < i; j++){       
          Agent myAgentA = agents.get(i);
          Agent myAgentB = agents.get(j);

          float myDist = dist(myAgentA.x,myAgentA.y,myAgentB.x,myAgentB.y);
          if(myDist < MAX_DIST ){
            myAgentA.drawLines(myDist,myAgentB.x,myAgentB.y);
          }
     }
  }
  
  
}



