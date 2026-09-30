module.exports = {
  apps: [{
    name: "grid3",
    script: "./new_grid_bot.py",
    cwd: __dirname,
    interpreter: __dirname + "/deltaenv/bin/python3",
    autorestart: true,
    restart_delay: 5000,
    max_restarts: 20
  }]
};
