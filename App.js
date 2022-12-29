import React, { useState } from "react"
import { SafeAreaView, Button,Text, FlatList} from "react-native"
import { NativeModules } from "react-native"



const App=()=>{
  const [value, setValue]= useState({a:'Apple'})
  const [data, setData] = useState([])
  const onPressInc = ()=>{
      NativeModules.Counter.increment({a:'Satyam'},val=>{
        setValue(val)
  setData([...data,val])
}
)
  }

  const onPressDec=()=>{
    NativeModules.Counter.decrement().then(val=>{
      setValue(val)
    }).catch(err=>{
      setValue(err)
    })
    
  }

  return(
    <SafeAreaView style={{flex:1}}>
      <Button
      title="Counter"
      onPress={onPressInc}
      />
      <Button
      title="Decrement"
      onPress={onPressDec}
      />
      <Text>
        {JSON.stringify(value)}
      </Text>
      <FlatList
      data={data}
      style={{backgroundColor:'red'}}
      renderItem={(item)=>
        <Text>
          {JSON.stringify(item)}
        </Text>
      }
      />
    </SafeAreaView>
  )
}
export default App