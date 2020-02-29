/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React from 'react'
import { SafeAreaView, View, Text, StyleSheet } from 'react-native'

const App = ({ message }) => {
    return (
        <SafeAreaView style={styles.safeareaview}>
            <View style={styles.container}>
                <Text style={styles.text}>This is React Native app inside Native app</Text>
                <Text style={styles.text}>Message from native:</Text>
                <Text style={styles.nativeText}>{message}</Text>
            </View>
        </SafeAreaView>
    )
}

const styles = StyleSheet.create({
    safeareaview: { flex: 1 },
    container: {
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center'
    },
    text: {
        color: 'gray',
        fontSize: 14,
        marginBottom: 10
    },
    nativeText: {
        color: 'black',
        fontSize: 16,
    }
})

export default App
