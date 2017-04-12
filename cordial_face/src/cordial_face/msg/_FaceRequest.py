# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from cordial_face/FaceRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class FaceRequest(genpy.Message):
  _md5sum = "0efdbed36edf5411ac89ea3bb0295c90"
  _type = "cordial_face/FaceRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# request AUs and/or viseme for the face
# multiple AUs possible, but only one viseme

#the numbers of the action units
int32[] aus
#the degree to which to express the AU, in (0,1]
float64[] au_degrees
#the time to make the expression, in ms
int64 au_ms

#specify a side of the face to move (eye and eyebrow movements only)
int32 side
int32 BOTH=0
int32 RIGHT=1
int32 LEFT=2

#the name of the viseme
string[] visemes
#the time to make the viseme, in ms
int64 viseme_ms
#the times (from zero) at which to play the visemes
float32[] times
int64 start

#toggles idle gaze behavior
int32 hold_gaze
int32 IDLE_OFF=1
int32 IDLE_ON=2

#3D gaze target, relative to center of face
# if retarget_gaze is false, ignore gaze_target
bool retarget_gaze
geometry_msgs/Point gaze_target

# velocity to move gaze, in rad/s
float64 gaze_vel

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  # Pseudo-constants
  BOTH = 0
  RIGHT = 1
  LEFT = 2
  IDLE_OFF = 1
  IDLE_ON = 2

  __slots__ = ['aus','au_degrees','au_ms','side','visemes','viseme_ms','times','start','hold_gaze','retarget_gaze','gaze_target','gaze_vel']
  _slot_types = ['int32[]','float64[]','int64','int32','string[]','int64','float32[]','int64','int32','bool','geometry_msgs/Point','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       aus,au_degrees,au_ms,side,visemes,viseme_ms,times,start,hold_gaze,retarget_gaze,gaze_target,gaze_vel

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(FaceRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.aus is None:
        self.aus = []
      if self.au_degrees is None:
        self.au_degrees = []
      if self.au_ms is None:
        self.au_ms = 0
      if self.side is None:
        self.side = 0
      if self.visemes is None:
        self.visemes = []
      if self.viseme_ms is None:
        self.viseme_ms = 0
      if self.times is None:
        self.times = []
      if self.start is None:
        self.start = 0
      if self.hold_gaze is None:
        self.hold_gaze = 0
      if self.retarget_gaze is None:
        self.retarget_gaze = False
      if self.gaze_target is None:
        self.gaze_target = geometry_msgs.msg.Point()
      if self.gaze_vel is None:
        self.gaze_vel = 0.
    else:
      self.aus = []
      self.au_degrees = []
      self.au_ms = 0
      self.side = 0
      self.visemes = []
      self.viseme_ms = 0
      self.times = []
      self.start = 0
      self.hold_gaze = 0
      self.retarget_gaze = False
      self.gaze_target = geometry_msgs.msg.Point()
      self.gaze_vel = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.aus)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.aus))
      length = len(self.au_degrees)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.au_degrees))
      _x = self
      buff.write(_get_struct_qi().pack(_x.au_ms, _x.side))
      length = len(self.visemes)
      buff.write(_struct_I.pack(length))
      for val1 in self.visemes:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
      buff.write(_get_struct_q().pack(self.viseme_ms))
      length = len(self.times)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.times))
      _x = self
      buff.write(_get_struct_qiB4d().pack(_x.start, _x.hold_gaze, _x.retarget_gaze, _x.gaze_target.x, _x.gaze_target.y, _x.gaze_target.z, _x.gaze_vel))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.gaze_target is None:
        self.gaze_target = geometry_msgs.msg.Point()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.aus = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.au_degrees = struct.unpack(pattern, str[start:end])
      _x = self
      start = end
      end += 12
      (_x.au_ms, _x.side,) = _get_struct_qi().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.visemes = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.visemes.append(val1)
      start = end
      end += 8
      (self.viseme_ms,) = _get_struct_q().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.times = struct.unpack(pattern, str[start:end])
      _x = self
      start = end
      end += 45
      (_x.start, _x.hold_gaze, _x.retarget_gaze, _x.gaze_target.x, _x.gaze_target.y, _x.gaze_target.z, _x.gaze_vel,) = _get_struct_qiB4d().unpack(str[start:end])
      self.retarget_gaze = bool(self.retarget_gaze)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.aus)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.aus.tostring())
      length = len(self.au_degrees)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.au_degrees.tostring())
      _x = self
      buff.write(_get_struct_qi().pack(_x.au_ms, _x.side))
      length = len(self.visemes)
      buff.write(_struct_I.pack(length))
      for val1 in self.visemes:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
      buff.write(_get_struct_q().pack(self.viseme_ms))
      length = len(self.times)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.times.tostring())
      _x = self
      buff.write(_get_struct_qiB4d().pack(_x.start, _x.hold_gaze, _x.retarget_gaze, _x.gaze_target.x, _x.gaze_target.y, _x.gaze_target.z, _x.gaze_vel))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.gaze_target is None:
        self.gaze_target = geometry_msgs.msg.Point()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.aus = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.au_degrees = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      _x = self
      start = end
      end += 12
      (_x.au_ms, _x.side,) = _get_struct_qi().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.visemes = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.visemes.append(val1)
      start = end
      end += 8
      (self.viseme_ms,) = _get_struct_q().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.times = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      _x = self
      start = end
      end += 45
      (_x.start, _x.hold_gaze, _x.retarget_gaze, _x.gaze_target.x, _x.gaze_target.y, _x.gaze_target.z, _x.gaze_vel,) = _get_struct_qiB4d().unpack(str[start:end])
      self.retarget_gaze = bool(self.retarget_gaze)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_qi = None
def _get_struct_qi():
    global _struct_qi
    if _struct_qi is None:
        _struct_qi = struct.Struct("<qi")
    return _struct_qi
_struct_q = None
def _get_struct_q():
    global _struct_q
    if _struct_q is None:
        _struct_q = struct.Struct("<q")
    return _struct_q
_struct_qiB4d = None
def _get_struct_qiB4d():
    global _struct_qiB4d
    if _struct_qiB4d is None:
        _struct_qiB4d = struct.Struct("<qiB4d")
    return _struct_qiB4d