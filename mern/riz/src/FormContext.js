import { useState } from 'react';
import { createContext } from 'react';

export const FormContext=createContext();
//component to acccess by consumer
export const FormProvider=({childComp})=>{
    const [localDB,setDB]=useState({})
    return{
        <FormContext.Provider
        value={{localDB,setDB}}>
        {childComp}
        </FormContext.Provider>
    }
}