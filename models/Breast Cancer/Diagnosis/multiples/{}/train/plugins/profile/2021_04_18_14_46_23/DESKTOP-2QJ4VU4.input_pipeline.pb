	)\����m@)\����m@!)\����m@	D���
�?D���
�?!D���
�?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$)\����m@�3��7�?A�|?5^�m@Y(~��k	�?*	     @U@2F
Iterator::Model��j+���?!      A@)n���?17@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat��ͪ�Ֆ?!<<<<<<:@);�O��n�?1------5@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip�w��#��?!     �P@)ŏ1w-!�?1������1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatelxz�,C�?!<<<<<<0@)U���N@�?1&@:Preprocessing2U
Iterator::Model::ParallelMapV2Έ����?!������%@)Έ����?1������%@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapΈ����?!������5@)a2U0*�s?1������@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice/n��r?!������@)/n��r?1������@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor"��u��q?!<<<<<<@)"��u��q?1<<<<<<@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9D���
�?#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	�3��7�?�3��7�?!�3��7�?      ��!       "      ��!       *      ��!       2	�|?5^�m@�|?5^�m@!�|?5^�m@:      ��!       B      ��!       J	(~��k	�?(~��k	�?!(~��k	�?R      ��!       Z	(~��k	�?(~��k	�?!(~��k	�?JCPU_ONLYYD���
�?b 