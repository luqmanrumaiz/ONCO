�	��ݓ��\@��ݓ��\@!��ݓ��\@	���'~%�?���'~%�?!���'~%�?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$��ݓ��\@���Mb�?AΈ����\@Y�ZӼ��?*	�����S@2F
Iterator::Modelj�q���?!�f��l6H@)V-��?1Bv�dC@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatM�O��?!�%h	Z�:@)�J�4�?1��`06@:Preprocessing2U
Iterator::Model::ParallelMapV2vq�-�?!/�"�$@)vq�-�?1/�"�$@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate�+e�X�?!|�^���-@)ŏ1w-!?1�(?ʏ�#@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip�1w-!�?!2�L&��I@)��_�Lu?1Ӿ�/�K@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceŏ1w-!o?!�(?ʏ�@)ŏ1w-!o?1�(?ʏ�@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor_�Q�k?!v�d�@)_�Q�k?1v�d�@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap�Pk�w�?!�C��=2@){�G�zd?1���(?
@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9���'~%�?#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	���Mb�?���Mb�?!���Mb�?      ��!       "      ��!       *      ��!       2	Έ����\@Έ����\@!Έ����\@:      ��!       B      ��!       J	�ZӼ��?�ZӼ��?!�ZӼ��?R      ��!       Z	�ZӼ��?�ZӼ��?!�ZӼ��?JCPU_ONLYY���'~%�?b Y      Y@q��:X{JG@"�
device�Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*�
�<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2I
=type.googleapis.com/tensorflow.profiler.GenericRecommendation
nono:
Refer to the TF2 Profiler FAQb�46.5819% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"CPU: B 