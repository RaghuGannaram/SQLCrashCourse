const express = require('express');
const mysql = require('mysql2');
const dotenv = require('dotenv');

const app = express();
dotenv.config();

const db = mysql.createConnection({
    host : 'localhost',
    user : 'root',
    password : process.env.mysql_key,
    database : 'organization'
})

db.connect((err)=>{
    if(err) throw err;
    console.log("Connection to local database is established")
})

app.get('/', (req, res)=>{
    let displayRecords = "select * from employee;";
    db.query(displayRecords,(err, data)=>{
        if(err) throw err;
        res.send(data);
    })
})

app.get('/dc', (req, res)=>{
    let displayRecords = `select * from employee where designation='JL Member'`;
    db.query(displayRecords,(err, data)=>{
        if(err) throw err;
        res.send(data);
    })
})

app.get('/marvel', (req, res)=>{
    let displayRecords = `select * from employee where designation='avenger'`;
    db.query(displayRecords,(err, data)=>{
        if(err) throw err;
        res.send(data);
    })
})


app.listen(3000, ()=> console.log("App started at localhost:3000"))