import React,{useState} from "react"
export default function Login(){
   
    const [uname,setUname]=useState();
    const [pass,setPass]=useState();
    return(
        <div>
            <h1>Login</h1>
            <p>{uname}::{pass}</p>
            <form>
                Enter UserName:<input value={uname} id="name" onChange={(e)=>{setUname(e.target.value)}}
                placeholder="enter the name"/>
                <br/>
                Enter Password:<input value={pass} id="password" onChange={(e)=>{setPass(e.target.value)}}
                placeholder="enter the password"/>
                <br/>
                <button>Submit</button>


            </form>
        </div>
    )
}
