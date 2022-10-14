import { GitHubService } from './services/GitHubService.js';

console.log(process.argv.at(-1));

GitHubService(process.env.GITHUB_TOKEN)
  .commentOnGithub({
    commentBody: process.argv.at(-1) || "Empty comment...",
    GITHUB_REPOSITORY: process.env.GITHUB_REPOSITORY,
    GITHUB_PR_NUMBER: process.env.GITHUB_PR_NUMBER,
  })

