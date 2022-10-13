import { execSync } from 'child_process';

console.log()

const size = process.argv.at("-1");

if(!size) throw "Please, provide the image size that you want 😀"

const URL = `https://via.placeholder.com/${size}.jpg`;
execSync(`mkdir ./assets/images || echo "Already exists"`);

execSync(`wget -O ./assets/images/${size}.jpg ${URL}`)

execSync(`rsync -abviuzP assets/* shells/web_portal/assets`);
