	u�nk@u�nk@!u�nk@	���&+_�?���&+_�?!���&+_�?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$u�nk@����S�?A9��v�ik@Yŏ1w-!�?*	������P@2F
Iterator::Model��+e�?!I�$I�B@)/n���?1�0�0:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat�0�*��?!�$I�$�=@)������?1$I�$Ir9@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate2U0*��?!��<��\7@)�~j�t��?1�m۶m�1@:Preprocessing2U
Iterator::Model::ParallelMapV2S�!�uq{?!�0��#@)S�!�uq{?1�0��#@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipI.�!���?!�m۶m�O@)��_vOv?1%I�$I @:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice���_vOn?!a�a@)���_vOn?1a�a@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor�~j�t�h?!�m۶m�@)�~j�t�h?1�m۶m�@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap�5�;Nё?!J�$I��9@)_�Q�[?1��<��<@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9���&+_�?#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	����S�?����S�?!����S�?      ��!       "      ��!       *      ��!       2	9��v�ik@9��v�ik@!9��v�ik@:      ��!       B      ��!       J	ŏ1w-!�?ŏ1w-!�?!ŏ1w-!�?R      ��!       Z	ŏ1w-!�?ŏ1w-!�?!ŏ1w-!�?JCPU_ONLYY���&+_�?b 