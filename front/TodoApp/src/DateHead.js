import React from 'react';
import {StyleSheet, Text, View} from 'react-native';

function DateHead(props) {
  return (
    <View style={styles.item}>
      <Text>
        {props.data.getFullYear()}년{props.data.getMonth() + 1}월{' '}
        {props.data.getDate()}일
      </Text>
    </View>
  );
}
const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'space-between',
  },
  item: {
    height: 50,
    backgroundColor: 'steelblue',
  },
});
export default DateHead;
