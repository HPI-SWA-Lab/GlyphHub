private
loadFrom: aTableNameString where: aSelectorValueDictionary into: aClass populate: aCollection
	
	^ self request: aTableNameString, '?where=', aSelectorValueDictionary asJsonString method: 'GET' data: nil.