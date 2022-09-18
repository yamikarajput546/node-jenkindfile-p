cd "/home/knoldus/integration/node"
npm install  
npm pack
mv school-website-node-1.0.0.tgz /home/knoldus/integration/node/artifact
tar -xvf school-website-node-1.0.0.tgz
cd package
npm install 
npm run init 
npm run build 
npm run start-server