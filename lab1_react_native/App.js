import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View, Image, Button, TextInput } from 'react-native';

export default function App() {
  return (
  //make top aligned
    <View style={styles.container}>
       <View style={styles.header}>
            <Text style={{fontSize: 24}}>Header</Text>
       </View>
       <View style={styles.imageContainer}>
            <Image
                style={styles.image}
                source={require('./assets/adaptive-icon.png')}
            />
       </View>
       <View style={styles.buttonsOuterContainer}>
        <View style={styles.buttonsContainer}>
            <Button title="BUTTON" style={styles.button}/>
            <Button title="BUTTON" style={styles.button}/>
        </View>
        <View style={styles.buttonsContainer}>
            <Button title="BUTTON" />
            <Button title="BUTTON" />
        </View>
       </View>
       <View style={styles.textInputContainer}>
            <Text style={{flex: 1}}>Email</Text>
            <TextInput style={styles.textInput}/>
       </View>
      <StatusBar style="auto" />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    display: 'flex',
    flexDirection: 'column',
    flex: 1,
    gap: 30,
    backgroundColor: '#fff',
  },
  header: {

    backgroundColor: 'cyan',
    display: 'flex',
    flexDirection: 'row',
    alignItems: 'flex-end',
    justifyContent: 'flex-start',
    padding: 16,
  },
  image:  {
    width: 240,
    height: 240,
  },
  imageContainer: {

    alignItems: 'center',
        justifyContent: 'center',
  },
  buttonsOuterContainer : {
    display:'flex',
    flexDirection: 'column',
    gap: 30,
  },
  buttonsContainer: {

    display: 'flex',
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-evenly',
  },
  textInputContainer: {

    flexDirection: 'row',
    justifyContent: 'space-around',
    alignItems: 'center',
    paddingLeft: 48,
    paddingRight: 48,
  },
  textInput: {
        flex: 3,
        borderColor: "gray",
        borderWidth: 2,
        borderRadius: 10,
        padding: 10,
  },
});
