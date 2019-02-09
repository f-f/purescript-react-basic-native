import React from 'react';
import { StyleSheet, Text, View } from 'react-native';
import { app } from "./output/Main"

export default class App extends React.Component {
  render() {
    return (
      <View style={styles.container}>
        {app} 
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
