.class public Landroid/media/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;,
        Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;,
        Landroid/media/ExifInterface$ExifAttribute;,
        Landroid/media/ExifInterface$ExifTag;,
        Landroid/media/ExifInterface$Rational;
    }
.end annotation


# static fields
.field private static final ASCII:Ljava/nio/charset/Charset;

.field private static final BYTE_ALIGN_II:S = 0x4949s

.field private static final BYTE_ALIGN_MM:S = 0x4d4ds

.field private static final DEBUG:Z = false

.field private static final EXIF_ASCII_PREFIX:[B

.field private static final EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

.field private static final IDENTIFIER_EXIF_APP1:[B

.field private static final IFD_EXIF_HINT:I = 0x1

.field private static final IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_FORMAT_BYTE:I = 0x1

.field private static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field private static final IFD_FORMAT_DOUBLE:I = 0xc

.field private static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final IFD_FORMAT_SBYTE:I = 0x6

.field private static final IFD_FORMAT_SINGLE:I = 0xb

.field private static final IFD_FORMAT_SLONG:I = 0x9

.field private static final IFD_FORMAT_SRATIONAL:I = 0xa

.field private static final IFD_FORMAT_SSHORT:I = 0x8

.field private static final IFD_FORMAT_STRING:I = 0x2

.field private static final IFD_FORMAT_ULONG:I = 0x4

.field private static final IFD_FORMAT_UNDEFINED:I = 0x7

.field private static final IFD_FORMAT_URATIONAL:I = 0x5

.field private static final IFD_FORMAT_USHORT:I = 0x3

.field private static final IFD_GPS_HINT:I = 0x2

.field private static final IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_INTEROPERABILITY_HINT:I = 0x3

.field private static final IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_POINTER_TAG_HINTS:[I

.field private static final IFD_THUMBNAIL_HINT:I = 0x4

.field private static final IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_TIFF_HINT:I = 0x0

.field private static final IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

.field private static final JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

.field private static final JPEG_SIGNATURE:[B

.field private static final JPEG_SIGNATURE_SIZE:I = 0x3

.field private static final MARKER:B = -0x1t

.field private static final MARKER_APP1:B = -0x1ft

.field private static final MARKER_COM:B = -0x2t

.field private static final MARKER_EOI:B = -0x27t

.field private static final MARKER_SOF0:B = -0x40t

.field private static final MARKER_SOF1:B = -0x3ft

.field private static final MARKER_SOF10:B = -0x36t

.field private static final MARKER_SOF11:B = -0x35t

.field private static final MARKER_SOF13:B = -0x33t

.field private static final MARKER_SOF14:B = -0x32t

.field private static final MARKER_SOF15:B = -0x31t

.field private static final MARKER_SOF2:B = -0x3et

.field private static final MARKER_SOF3:B = -0x3dt

.field private static final MARKER_SOF5:B = -0x3bt

.field private static final MARKER_SOF6:B = -0x3at

.field private static final MARKER_SOF7:B = -0x39t

.field private static final MARKER_SOF9:B = -0x37t

.field private static final MARKER_SOI:B = -0x28t

.field private static final MARKER_SOS:B = -0x26t

.field public static final ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final ORIENTATION_NORMAL:I = 0x1

.field public static final ORIENTATION_ROTATE_180:I = 0x3

.field public static final ORIENTATION_ROTATE_270:I = 0x8

.field public static final ORIENTATION_ROTATE_90:I = 0x6

.field public static final ORIENTATION_TRANSPOSE:I = 0x5

.field public static final ORIENTATION_TRANSVERSE:I = 0x7

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ExifInterface"

.field public static final TAG_APERTURE:Ljava/lang/String; = "FNumber"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_APERTURE_VALUE:Ljava/lang/String; = "ApertureValue"

.field public static final TAG_ARTIST:Ljava/lang/String; = "Artist"

.field public static final TAG_BITS_PER_SAMPLE:Ljava/lang/String; = "BitsPerSample"

.field public static final TAG_BRIGHTNESS_VALUE:Ljava/lang/String; = "BrightnessValue"

.field public static final TAG_CFA_PATTERN:Ljava/lang/String; = "CFAPattern"

.field public static final TAG_COLOR_SPACE:Ljava/lang/String; = "ColorSpace"

.field public static final TAG_COMPONENTS_CONFIGURATION:Ljava/lang/String; = "ComponentsConfiguration"

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:Ljava/lang/String; = "CompressedBitsPerPixel"

.field public static final TAG_COMPRESSION:Ljava/lang/String; = "Compression"

.field public static final TAG_CONTRAST:Ljava/lang/String; = "Contrast"

.field public static final TAG_COPYRIGHT:Ljava/lang/String; = "Copyright"

.field public static final TAG_CUSTOM_RENDERED:Ljava/lang/String; = "CustomRendered"

.field public static final TAG_DATETIME:Ljava/lang/String; = "DateTime"

.field public static final TAG_DATETIME_DIGITIZED:Ljava/lang/String; = "DateTimeDigitized"

.field public static final TAG_DATETIME_ORIGINAL:Ljava/lang/String; = "DateTimeOriginal"

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:Ljava/lang/String; = "DeviceSettingDescription"

.field public static final TAG_DIGITAL_ZOOM_RATIO:Ljava/lang/String; = "DigitalZoomRatio"

.field private static final TAG_EXIF_IFD_POINTER:Ljava/lang/String; = "ExifIFDPointer"

.field public static final TAG_EXIF_VERSION:Ljava/lang/String; = "ExifVersion"

.field public static final TAG_EXPOSURE_BIAS_VALUE:Ljava/lang/String; = "ExposureBiasValue"

.field public static final TAG_EXPOSURE_INDEX:Ljava/lang/String; = "ExposureIndex"

.field public static final TAG_EXPOSURE_MODE:Ljava/lang/String; = "ExposureMode"

.field public static final TAG_EXPOSURE_PROGRAM:Ljava/lang/String; = "ExposureProgram"

.field public static final TAG_EXPOSURE_TIME:Ljava/lang/String; = "ExposureTime"

.field public static final TAG_FILE_SOURCE:Ljava/lang/String; = "FileSource"

.field public static final TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final TAG_FLASHPIX_VERSION:Ljava/lang/String; = "FlashpixVersion"

.field public static final TAG_FLASH_ENERGY:Ljava/lang/String; = "FlashEnergy"

.field public static final TAG_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final TAG_FOCAL_LENGTH_IN_35MM_FILM:Ljava/lang/String; = "FocalLengthIn35mmFilm"

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:Ljava/lang/String; = "FocalPlaneResolutionUnit"

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:Ljava/lang/String; = "FocalPlaneXResolution"

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:Ljava/lang/String; = "FocalPlaneYResolution"

.field public static final TAG_F_NUMBER:Ljava/lang/String; = "FNumber"

.field public static final TAG_GAIN_CONTROL:Ljava/lang/String; = "GainControl"

.field public static final TAG_GPS_ALTITUDE:Ljava/lang/String; = "GPSAltitude"

.field public static final TAG_GPS_ALTITUDE_REF:Ljava/lang/String; = "GPSAltitudeRef"

.field public static final TAG_GPS_AREA_INFORMATION:Ljava/lang/String; = "GPSAreaInformation"

.field public static final TAG_GPS_DATESTAMP:Ljava/lang/String; = "GPSDateStamp"

.field public static final TAG_GPS_DEST_BEARING:Ljava/lang/String; = "GPSDestBearing"

.field public static final TAG_GPS_DEST_BEARING_REF:Ljava/lang/String; = "GPSDestBearingRef"

.field public static final TAG_GPS_DEST_DISTANCE:Ljava/lang/String; = "GPSDestDistance"

.field public static final TAG_GPS_DEST_DISTANCE_REF:Ljava/lang/String; = "GPSDestDistanceRef"

.field public static final TAG_GPS_DEST_LATITUDE:Ljava/lang/String; = "GPSDestLatitude"

.field public static final TAG_GPS_DEST_LATITUDE_REF:Ljava/lang/String; = "GPSDestLatitudeRef"

.field public static final TAG_GPS_DEST_LONGITUDE:Ljava/lang/String; = "GPSDestLongitude"

.field public static final TAG_GPS_DEST_LONGITUDE_REF:Ljava/lang/String; = "GPSDestLongitudeRef"

.field public static final TAG_GPS_DIFFERENTIAL:Ljava/lang/String; = "GPSDifferential"

.field public static final TAG_GPS_DOP:Ljava/lang/String; = "GPSDOP"

.field public static final TAG_GPS_IMG_DIRECTION:Ljava/lang/String; = "GPSImgDirection"

.field public static final TAG_GPS_IMG_DIRECTION_REF:Ljava/lang/String; = "GPSImgDirectionRef"

.field private static final TAG_GPS_INFO_IFD_POINTER:Ljava/lang/String; = "GPSInfoIFDPointer"

.field public static final TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final TAG_GPS_MAP_DATUM:Ljava/lang/String; = "GPSMapDatum"

.field public static final TAG_GPS_MEASURE_MODE:Ljava/lang/String; = "GPSMeasureMode"

.field public static final TAG_GPS_PROCESSING_METHOD:Ljava/lang/String; = "GPSProcessingMethod"

.field public static final TAG_GPS_SATELLITES:Ljava/lang/String; = "GPSSatellites"

.field public static final TAG_GPS_SPEED:Ljava/lang/String; = "GPSSpeed"

.field public static final TAG_GPS_SPEED_REF:Ljava/lang/String; = "GPSSpeedRef"

.field public static final TAG_GPS_STATUS:Ljava/lang/String; = "GPSStatus"

.field public static final TAG_GPS_TIMESTAMP:Ljava/lang/String; = "GPSTimeStamp"

.field public static final TAG_GPS_TRACK:Ljava/lang/String; = "GPSTrack"

.field public static final TAG_GPS_TRACK_REF:Ljava/lang/String; = "GPSTrackRef"

.field public static final TAG_GPS_VERSION_ID:Ljava/lang/String; = "GPSVersionID"

.field private static final TAG_HAS_THUMBNAIL:Ljava/lang/String; = "HasThumbnail"

.field public static final TAG_IMAGE_DESCRIPTION:Ljava/lang/String; = "ImageDescription"

.field public static final TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final TAG_IMAGE_UNIQUE_ID:Ljava/lang/String; = "ImageUniqueID"

.field public static final TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field private static final TAG_INTEROPERABILITY_IFD_POINTER:Ljava/lang/String; = "InteroperabilityIFDPointer"

.field public static final TAG_INTEROPERABILITY_INDEX:Ljava/lang/String; = "InteroperabilityIndex"

.field public static final TAG_ISO:Ljava/lang/String; = "ISOSpeedRatings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_ISO_SPEED_RATINGS:Ljava/lang/String; = "ISOSpeedRatings"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:Ljava/lang/String; = "JPEGInterchangeFormat"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Ljava/lang/String; = "JPEGInterchangeFormatLength"

.field public static final TAG_LIGHT_SOURCE:Ljava/lang/String; = "LightSource"

.field public static final TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final TAG_MAKER_NOTE:Ljava/lang/String; = "MakerNote"

.field public static final TAG_MAX_APERTURE_VALUE:Ljava/lang/String; = "MaxApertureValue"

.field public static final TAG_METERING_MODE:Ljava/lang/String; = "MeteringMode"

.field public static final TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final TAG_OECF:Ljava/lang/String; = "OECF"

.field public static final TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:Ljava/lang/String; = "PhotometricInterpretation"

.field public static final TAG_PIXEL_X_DIMENSION:Ljava/lang/String; = "PixelXDimension"

.field public static final TAG_PIXEL_Y_DIMENSION:Ljava/lang/String; = "PixelYDimension"

.field public static final TAG_PLANAR_CONFIGURATION:Ljava/lang/String; = "PlanarConfiguration"

.field public static final TAG_PRIMARY_CHROMATICITIES:Ljava/lang/String; = "PrimaryChromaticities"

.field public static final TAG_REFERENCE_BLACK_WHITE:Ljava/lang/String; = "ReferenceBlackWhite"

.field public static final TAG_RELATED_SOUND_FILE:Ljava/lang/String; = "RelatedSoundFile"

.field public static final TAG_RESOLUTION_UNIT:Ljava/lang/String; = "ResolutionUnit"

.field public static final TAG_ROWS_PER_STRIP:Ljava/lang/String; = "RowsPerStrip"

.field public static final TAG_SAMPLES_PER_PIXEL:Ljava/lang/String; = "SamplesPerPixel"

.field public static final TAG_SATURATION:Ljava/lang/String; = "Saturation"

.field public static final TAG_SCENE_CAPTURE_TYPE:Ljava/lang/String; = "SceneCaptureType"

.field public static final TAG_SCENE_TYPE:Ljava/lang/String; = "SceneType"

.field public static final TAG_SENSING_METHOD:Ljava/lang/String; = "SensingMethod"

.field public static final TAG_SHARPNESS:Ljava/lang/String; = "Sharpness"

.field public static final TAG_SHUTTER_SPEED_VALUE:Ljava/lang/String; = "ShutterSpeedValue"

.field public static final TAG_SOFTWARE:Ljava/lang/String; = "Software"

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:Ljava/lang/String; = "SpatialFrequencyResponse"

.field public static final TAG_SPECTRAL_SENSITIVITY:Ljava/lang/String; = "SpectralSensitivity"

.field public static final TAG_STRIP_BYTE_COUNTS:Ljava/lang/String; = "StripByteCounts"

.field public static final TAG_STRIP_OFFSETS:Ljava/lang/String; = "StripOffsets"

.field public static final TAG_SUBJECT_AREA:Ljava/lang/String; = "SubjectArea"

.field public static final TAG_SUBJECT_DISTANCE:Ljava/lang/String; = "SubjectDistance"

.field public static final TAG_SUBJECT_DISTANCE_RANGE:Ljava/lang/String; = "SubjectDistanceRange"

.field public static final TAG_SUBJECT_LOCATION:Ljava/lang/String; = "SubjectLocation"

.field public static final TAG_SUBSEC_TIME:Ljava/lang/String; = "SubSecTime"

.field public static final TAG_SUBSEC_TIME_DIG:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_DIGITIZED:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_ORIG:Ljava/lang/String; = "SubSecTimeOriginal"

.field public static final TAG_SUBSEC_TIME_ORIGINAL:Ljava/lang/String; = "SubSecTimeOriginal"

.field private static final TAG_THUMBNAIL_DATA:Ljava/lang/String; = "ThumbnailData"

.field public static final TAG_THUMBNAIL_IMAGE_LENGTH:Ljava/lang/String; = "ThumbnailImageLength"

.field public static final TAG_THUMBNAIL_IMAGE_WIDTH:Ljava/lang/String; = "ThumbnailImageWidth"

.field private static final TAG_THUMBNAIL_LENGTH:Ljava/lang/String; = "ThumbnailLength"

.field private static final TAG_THUMBNAIL_OFFSET:Ljava/lang/String; = "ThumbnailOffset"

.field public static final TAG_TRANSFER_FUNCTION:Ljava/lang/String; = "TransferFunction"

.field public static final TAG_USER_COMMENT:Ljava/lang/String; = "UserComment"

.field public static final TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final TAG_WHITE_POINT:Ljava/lang/String; = "WhitePoint"

.field public static final TAG_X_RESOLUTION:Ljava/lang/String; = "XResolution"

.field public static final TAG_Y_CB_CR_COEFFICIENTS:Ljava/lang/String; = "YCbCrCoefficients"

.field public static final TAG_Y_CB_CR_POSITIONING:Ljava/lang/String; = "YCbCrPositioning"

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:Ljava/lang/String; = "YCbCrSubSampling"

.field public static final TAG_Y_RESOLUTION:Ljava/lang/String; = "YResolution"

.field public static final WHITEBALANCE_AUTO:I = 0x0

.field public static final WHITEBALANCE_MANUAL:I = 0x1

.field private static final sExifTagMapsForReading:[Ljava/util/HashMap;

.field private static final sExifTagMapsForWriting:[Ljava/util/HashMap;

.field private static sFormatter:Ljava/text/SimpleDateFormat;

.field private static final sGpsTimestampPattern:Ljava/util/regex/Pattern;

.field private static final sNonZeroTimePattern:Ljava/util/regex/Pattern;

.field private static final sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final mAttributes:[Ljava/util/HashMap;

.field private mExifByteOrder:Ljava/nio/ByteOrder;

.field private final mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z

.field private final mIsInputStream:Z

.field private mIsRaw:Z

.field private mIsSupportedFile:Z

.field private final mSeekableFileDescriptor:Ljava/io/FileDescriptor;

.field private mThumbnailBytes:[B

.field private mThumbnailLength:I

.field private mThumbnailOffset:I


# direct methods
.method static synthetic -get0()Ljava/nio/charset/Charset;
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic -get1()[B
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    return-object v0
.end method

.method static synthetic -get2()[I
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    return-object v0
.end method

.method static synthetic -get3()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v4, 0x4

    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v3, 0x3

    const/4 v5, 0x0

    .line 373
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    .line 401
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 402
    const-string/jumbo v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "BYTE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "STRING"

    aput-object v1, v0, v10

    const-string/jumbo v1, "USHORT"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ULONG"

    aput-object v1, v0, v4

    const-string/jumbo v1, "URATIONAL"

    aput-object v1, v0, v11

    const-string/jumbo v1, "SBYTE"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "UNDEFINED"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "SSHORT"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 403
    const-string/jumbo v1, "SLONG"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "SRATIONAL"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "SINGLE"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "DOUBLE"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 401
    sput-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 406
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 409
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    .line 818
    const/16 v0, 0x20

    new-array v8, v0, [Landroid/media/ExifInterface$ExifTag;

    .line 819
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ImageWidth"

    const/16 v2, 0x100

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x0

    aput-object v0, v8, v1

    .line 820
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ImageLength"

    const/16 v2, 0x101

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x1

    aput-object v0, v8, v1

    .line 821
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "BitsPerSample"

    const/16 v2, 0x102

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v10

    .line 822
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Compression"

    const/16 v2, 0x103

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v3

    .line 823
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PhotometricInterpretation"

    const/16 v2, 0x106

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v4

    .line 824
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ImageDescription"

    const/16 v2, 0x10e

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v11

    .line 825
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Make"

    const/16 v2, 0x10f

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x6

    aput-object v0, v8, v1

    .line 826
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Model"

    const/16 v2, 0x110

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x7

    aput-object v0, v8, v1

    .line 827
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "StripOffsets"

    const/16 v2, 0x111

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x8

    aput-object v0, v8, v1

    .line 828
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Orientation"

    const/16 v2, 0x112

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x9

    aput-object v0, v8, v1

    .line 829
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SamplesPerPixel"

    const/16 v2, 0x115

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xa

    aput-object v0, v8, v1

    .line 830
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "RowsPerStrip"

    const/16 v2, 0x116

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xb

    aput-object v0, v8, v1

    .line 831
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "StripByteCounts"

    const/16 v2, 0x117

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xc

    aput-object v0, v8, v1

    .line 832
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "XResolution"

    const/16 v2, 0x11a

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xd

    aput-object v0, v8, v1

    .line 833
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YResolution"

    const/16 v2, 0x11b

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xe

    aput-object v0, v8, v1

    .line 834
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PlanarConfiguration"

    const/16 v2, 0x11c

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xf

    aput-object v0, v8, v1

    .line 835
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ResolutionUnit"

    const/16 v2, 0x128

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x10

    aput-object v0, v8, v1

    .line 836
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "TransferFunction"

    const/16 v2, 0x12d

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x11

    aput-object v0, v8, v1

    .line 837
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Software"

    const/16 v2, 0x131

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x12

    aput-object v0, v8, v1

    .line 838
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DateTime"

    const/16 v2, 0x132

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x13

    aput-object v0, v8, v1

    .line 839
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Artist"

    const/16 v2, 0x13b

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x14

    aput-object v0, v8, v1

    .line 840
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "WhitePoint"

    const/16 v2, 0x13e

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x15

    aput-object v0, v8, v1

    .line 841
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PrimaryChromaticities"

    const/16 v2, 0x13f

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x16

    aput-object v0, v8, v1

    .line 842
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JPEGInterchangeFormat"

    const/16 v2, 0x201

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x17

    aput-object v0, v8, v1

    .line 843
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JPEGInterchangeFormatLength"

    const/16 v2, 0x202

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x18

    aput-object v0, v8, v1

    .line 844
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YCbCrCoefficients"

    const/16 v2, 0x211

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x19

    aput-object v0, v8, v1

    .line 845
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YCbCrSubSampling"

    const/16 v2, 0x212

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1a

    aput-object v0, v8, v1

    .line 846
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YCbCrPositioning"

    const/16 v2, 0x213

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1b

    aput-object v0, v8, v1

    .line 847
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ReferenceBlackWhite"

    const/16 v2, 0x214

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1c

    aput-object v0, v8, v1

    .line 848
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Copyright"

    const v2, 0x8298

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1d

    aput-object v0, v8, v1

    .line 849
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExifIFDPointer"

    const v2, 0x8769

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1e

    aput-object v0, v8, v1

    .line 850
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "GPSInfoIFDPointer"

    const v2, 0x8825

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1f

    aput-object v0, v8, v1

    .line 818
    sput-object v8, Landroid/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 854
    const/16 v0, 0x39

    new-array v8, v0, [Landroid/media/ExifInterface$ExifTag;

    .line 855
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExposureTime"

    const v2, 0x829a

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x0

    aput-object v0, v8, v1

    .line 856
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FNumber"

    const v2, 0x829d

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x1

    aput-object v0, v8, v1

    .line 857
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExposureProgram"

    const v2, 0x8822

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v10

    .line 858
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SpectralSensitivity"

    const v2, 0x8824

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v3

    .line 859
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ISOSpeedRatings"

    const v2, 0x8827

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v4

    .line 860
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "OECF"

    const v2, 0x8828

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v11

    .line 861
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExifVersion"

    const v2, 0x9000

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x6

    aput-object v0, v8, v1

    .line 862
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DateTimeOriginal"

    const v2, 0x9003

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x7

    aput-object v0, v8, v1

    .line 863
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DateTimeDigitized"

    const v2, 0x9004

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x8

    aput-object v0, v8, v1

    .line 864
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ComponentsConfiguration"

    const v2, 0x9101

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x9

    aput-object v0, v8, v1

    .line 865
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "CompressedBitsPerPixel"

    const v2, 0x9102

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xa

    aput-object v0, v8, v1

    .line 866
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ShutterSpeedValue"

    const v2, 0x9201

    const/16 v9, 0xa

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xb

    aput-object v0, v8, v1

    .line 867
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ApertureValue"

    const v2, 0x9202

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xc

    aput-object v0, v8, v1

    .line 868
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "BrightnessValue"

    const v2, 0x9203

    const/16 v9, 0xa

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xd

    aput-object v0, v8, v1

    .line 869
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExposureBiasValue"

    const v2, 0x9204

    const/16 v9, 0xa

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xe

    aput-object v0, v8, v1

    .line 870
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "MaxApertureValue"

    const v2, 0x9205

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xf

    aput-object v0, v8, v1

    .line 871
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubjectDistance"

    const v2, 0x9206

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x10

    aput-object v0, v8, v1

    .line 872
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "MeteringMode"

    const v2, 0x9207

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x11

    aput-object v0, v8, v1

    .line 873
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "LightSource"

    const v2, 0x9208

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x12

    aput-object v0, v8, v1

    .line 874
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Flash"

    const v2, 0x9209

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x13

    aput-object v0, v8, v1

    .line 875
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FocalLength"

    const v2, 0x920a

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x14

    aput-object v0, v8, v1

    .line 876
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubjectArea"

    const v2, 0x9214

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x15

    aput-object v0, v8, v1

    .line 877
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "MakerNote"

    const v2, 0x927c

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x16

    aput-object v0, v8, v1

    .line 878
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "UserComment"

    const v2, 0x9286

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x17

    aput-object v0, v8, v1

    .line 879
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubSecTime"

    const v2, 0x9290

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x18

    aput-object v0, v8, v1

    .line 880
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubSecTimeOriginal"

    const v2, 0x9291

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x19

    aput-object v0, v8, v1

    .line 881
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubSecTimeDigitized"

    const v2, 0x9292

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1a

    aput-object v0, v8, v1

    .line 882
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FlashpixVersion"

    const v2, 0xa000

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1b

    aput-object v0, v8, v1

    .line 883
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ColorSpace"

    const v2, 0xa001

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1c

    aput-object v0, v8, v1

    .line 884
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PixelXDimension"

    const v2, 0xa002

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1d

    aput-object v0, v8, v1

    .line 885
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PixelYDimension"

    const v2, 0xa003

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1e

    aput-object v0, v8, v1

    .line 886
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "RelatedSoundFile"

    const v2, 0xa004

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1f

    aput-object v0, v8, v1

    .line 887
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "InteroperabilityIFDPointer"

    const v2, 0xa005

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x20

    aput-object v0, v8, v1

    .line 888
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FlashEnergy"

    const v2, 0xa20b

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x21

    aput-object v0, v8, v1

    .line 889
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SpatialFrequencyResponse"

    const v2, 0xa20c

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x22

    aput-object v0, v8, v1

    .line 890
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FocalPlaneXResolution"

    const v2, 0xa20e

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x23

    aput-object v0, v8, v1

    .line 891
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FocalPlaneYResolution"

    const v2, 0xa20f

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x24

    aput-object v0, v8, v1

    .line 892
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FocalPlaneResolutionUnit"

    const v2, 0xa210

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x25

    aput-object v0, v8, v1

    .line 893
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubjectLocation"

    const v2, 0xa214

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x26

    aput-object v0, v8, v1

    .line 894
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExposureIndex"

    const v2, 0xa215

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x27

    aput-object v0, v8, v1

    .line 895
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SensingMethod"

    const v2, 0xa217

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x28

    aput-object v0, v8, v1

    .line 896
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FileSource"

    const v2, 0xa300

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x29

    aput-object v0, v8, v1

    .line 897
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SceneType"

    const v2, 0xa301

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x2a

    aput-object v0, v8, v1

    .line 898
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "CFAPattern"

    const v2, 0xa302

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x2b

    aput-object v0, v8, v1

    .line 899
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "CustomRendered"

    const v2, 0xa401

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x2c

    aput-object v0, v8, v1

    .line 900
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExposureMode"

    const v2, 0xa402

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x2d

    aput-object v0, v8, v1

    .line 901
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "WhiteBalance"

    const v2, 0xa403

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x2e

    aput-object v0, v8, v1

    .line 902
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DigitalZoomRatio"

    const v2, 0xa404

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x2f

    aput-object v0, v8, v1

    .line 903
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "FocalLengthIn35mmFilm"

    const v2, 0xa405

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x30

    aput-object v0, v8, v1

    .line 904
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SceneCaptureType"

    const v2, 0xa406

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x31

    aput-object v0, v8, v1

    .line 905
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "GainControl"

    const v2, 0xa407

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x32

    aput-object v0, v8, v1

    .line 906
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Contrast"

    const v2, 0xa408

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x33

    aput-object v0, v8, v1

    .line 907
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Saturation"

    const v2, 0xa409

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x34

    aput-object v0, v8, v1

    .line 908
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Sharpness"

    const v2, 0xa40a

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x35

    aput-object v0, v8, v1

    .line 909
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DeviceSettingDescription"

    const v2, 0xa40b

    const/4 v9, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x36

    aput-object v0, v8, v1

    .line 910
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SubjectDistanceRange"

    const v2, 0xa40c

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x37

    aput-object v0, v8, v1

    .line 911
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ImageUniqueID"

    const v2, 0xa420

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x38

    aput-object v0, v8, v1

    .line 854
    sput-object v8, Landroid/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 915
    const/16 v0, 0x1f

    new-array v0, v0, [Landroid/media/ExifInterface$ExifTag;

    .line 916
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSVersionID"

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v1, v2, v8, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 917
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSLatitudeRef"

    const/4 v8, 0x1

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 918
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSLatitude"

    invoke-direct {v1, v2, v10, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v10

    .line 919
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSLongitudeRef"

    invoke-direct {v1, v2, v3, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v3

    .line 920
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSLongitude"

    invoke-direct {v1, v2, v4, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v4

    .line 921
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSAltitudeRef"

    const/4 v8, 0x1

    invoke-direct {v1, v2, v11, v8, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v11

    .line 922
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSAltitude"

    const/4 v8, 0x6

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 923
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSTimeStamp"

    const/4 v8, 0x7

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 924
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSSatellites"

    const/16 v8, 0x8

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 925
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSStatus"

    const/16 v8, 0x9

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 926
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSMeasureMode"

    const/16 v8, 0xa

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 927
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDOP"

    const/16 v8, 0xb

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 928
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSSpeedRef"

    const/16 v8, 0xc

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 929
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSSpeed"

    const/16 v8, 0xd

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 930
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSTrackRef"

    const/16 v8, 0xe

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 931
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSTrack"

    const/16 v8, 0xf

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 932
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSImgDirectionRef"

    const/16 v8, 0x10

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 933
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSImgDirection"

    const/16 v8, 0x11

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 934
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSMapDatum"

    const/16 v8, 0x12

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 935
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestLatitudeRef"

    const/16 v8, 0x13

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 936
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestLatitude"

    const/16 v8, 0x14

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 937
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestLongitudeRef"

    const/16 v8, 0x15

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 938
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestLongitude"

    const/16 v8, 0x16

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 939
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestBearingRef"

    const/16 v8, 0x17

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 940
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestBearing"

    const/16 v8, 0x18

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 941
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestDistanceRef"

    const/16 v8, 0x19

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 942
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDestDistance"

    const/16 v8, 0x1a

    invoke-direct {v1, v2, v8, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 943
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSProcessingMethod"

    const/16 v8, 0x1b

    const/4 v9, 0x7

    invoke-direct {v1, v2, v8, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 944
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSAreaInformation"

    const/16 v8, 0x1c

    const/4 v9, 0x7

    invoke-direct {v1, v2, v8, v9, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 945
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDateStamp"

    const/16 v8, 0x1d

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 946
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSDifferential"

    const/16 v8, 0x1e

    invoke-direct {v1, v2, v8, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 915
    sput-object v0, Landroid/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 949
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$ExifTag;

    .line 950
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "InteroperabilityIndex"

    const/4 v8, 0x1

    invoke-direct {v1, v2, v8, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 949
    sput-object v0, Landroid/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 953
    const/16 v0, 0x20

    new-array v8, v0, [Landroid/media/ExifInterface$ExifTag;

    .line 954
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ThumbnailImageWidth"

    const/16 v2, 0x100

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x0

    aput-object v0, v8, v1

    .line 955
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ThumbnailImageLength"

    const/16 v2, 0x101

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x1

    aput-object v0, v8, v1

    .line 956
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "BitsPerSample"

    const/16 v2, 0x102

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v10

    .line 957
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Compression"

    const/16 v2, 0x103

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v3

    .line 958
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PhotometricInterpretation"

    const/16 v2, 0x106

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v4

    .line 959
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ImageDescription"

    const/16 v2, 0x10e

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v0, v8, v11

    .line 960
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Make"

    const/16 v2, 0x10f

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x6

    aput-object v0, v8, v1

    .line 961
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Model"

    const/16 v2, 0x110

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v1, 0x7

    aput-object v0, v8, v1

    .line 962
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "StripOffsets"

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x8

    aput-object v0, v8, v1

    .line 963
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Orientation"

    const/16 v2, 0x112

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x9

    aput-object v0, v8, v1

    .line 964
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "SamplesPerPixel"

    const/16 v2, 0x115

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xa

    aput-object v0, v8, v1

    .line 965
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "RowsPerStrip"

    const/16 v2, 0x116

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xb

    aput-object v0, v8, v1

    .line 966
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "StripByteCounts"

    const/16 v2, 0x117

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xc

    aput-object v0, v8, v1

    .line 967
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "XResolution"

    const/16 v2, 0x11a

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xd

    aput-object v0, v8, v1

    .line 968
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YResolution"

    const/16 v2, 0x11b

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xe

    aput-object v0, v8, v1

    .line 969
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PlanarConfiguration"

    const/16 v2, 0x11c

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0xf

    aput-object v0, v8, v1

    .line 970
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ResolutionUnit"

    const/16 v2, 0x128

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x10

    aput-object v0, v8, v1

    .line 971
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "TransferFunction"

    const/16 v2, 0x12d

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x11

    aput-object v0, v8, v1

    .line 972
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Software"

    const/16 v2, 0x131

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x12

    aput-object v0, v8, v1

    .line 973
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "DateTime"

    const/16 v2, 0x132

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x13

    aput-object v0, v8, v1

    .line 974
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Artist"

    const/16 v2, 0x13b

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x14

    aput-object v0, v8, v1

    .line 975
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "WhitePoint"

    const/16 v2, 0x13e

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x15

    aput-object v0, v8, v1

    .line 976
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "PrimaryChromaticities"

    const/16 v2, 0x13f

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x16

    aput-object v0, v8, v1

    .line 977
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JPEGInterchangeFormat"

    const/16 v2, 0x201

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x17

    aput-object v0, v8, v1

    .line 978
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JPEGInterchangeFormatLength"

    const/16 v2, 0x202

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x18

    aput-object v0, v8, v1

    .line 979
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YCbCrCoefficients"

    const/16 v2, 0x211

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x19

    aput-object v0, v8, v1

    .line 980
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YCbCrSubSampling"

    const/16 v2, 0x212

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1a

    aput-object v0, v8, v1

    .line 981
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "YCbCrPositioning"

    const/16 v2, 0x213

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1b

    aput-object v0, v8, v1

    .line 982
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ReferenceBlackWhite"

    const/16 v2, 0x214

    invoke-direct {v0, v1, v2, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1c

    aput-object v0, v8, v1

    .line 983
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "Copyright"

    const v2, 0x8298

    invoke-direct {v0, v1, v2, v10, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1d

    aput-object v0, v8, v1

    .line 984
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "ExifIFDPointer"

    const v2, 0x8769

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1e

    aput-object v0, v8, v1

    .line 985
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "GPSInfoIFDPointer"

    const v2, 0x8825

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/16 v1, 0x1f

    aput-object v0, v8, v1

    .line 953
    sput-object v8, Landroid/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 998
    new-array v0, v11, [[Landroid/media/ExifInterface$ExifTag;

    .line 999
    sget-object v1, Landroid/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v1, v0, v10

    sget-object v1, Landroid/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v1, v0, v3

    .line 1000
    sget-object v1, Landroid/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v1, v0, v4

    .line 998
    sput-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    .line 1003
    new-array v0, v3, [Landroid/media/ExifInterface$ExifTag;

    .line 1004
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "ExifIFDPointer"

    const v8, 0x8769

    invoke-direct {v1, v2, v8, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1005
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "GPSInfoIFDPointer"

    const v8, 0x8825

    invoke-direct {v1, v2, v8, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1006
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v2, "InteroperabilityIFDPointer"

    const v8, 0xa005

    invoke-direct {v1, v2, v8, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    aput-object v1, v0, v10

    .line 1003
    sput-object v0, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1010
    const/4 v0, 0x1

    .line 1009
    filled-new-array {v0, v10, v3}, [I

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->IFD_POINTER_TAG_HINTS:[I

    .line 1014
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JPEGInterchangeFormat"

    const/16 v2, 0x201

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    .line 1013
    sput-object v0, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    .line 1016
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string/jumbo v1, "JPEGInterchangeFormatLength"

    const/16 v2, 0x202

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V

    .line 1015
    sput-object v0, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    .line 1019
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 1021
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 1022
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v11, [Ljava/lang/String;

    .line 1023
    const-string/jumbo v2, "FNumber"

    const/4 v5, 0x0

    aput-object v2, v1, v5

    const-string/jumbo v2, "DigitalZoomRatio"

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const-string/jumbo v2, "ExposureTime"

    aput-object v2, v1, v10

    const-string/jumbo v2, "SubjectDistance"

    aput-object v2, v1, v3

    .line 1024
    const-string/jumbo v2, "GPSTimeStamp"

    aput-object v2, v1, v4

    .line 1022
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 1031
    const-string/jumbo v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 1033
    const-string/jumbo v0, "Exif\u0000\u0000"

    sget-object v1, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 1058
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1059
    invoke-static {}, Landroid/media/ExifInterface;->nativeInitRaw()V

    .line 1060
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 1061
    sget-object v0, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1064
    const/4 v6, 0x0

    .local v6, "hint":I
    :goto_0
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    if-ge v6, v0, :cond_1

    .line 1065
    sget-object v0, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v6

    .line 1066
    sget-object v0, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v6

    .line 1067
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    aget-object v1, v0, v6

    const/4 v0, 0x0

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v7, v1, v0

    .line 1068
    .local v7, "tag":Landroid/media/ExifInterface$ExifTag;
    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v3, v3, v6

    iget v4, v7, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v3, v3, v6

    iget-object v4, v7, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1064
    .end local v7    # "tag":Landroid/media/ExifInterface$ExifTag;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1089
    :cond_1
    const-string/jumbo v0, ".*[1-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 1092
    const-string/jumbo v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1091
    sput-object v0, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    .line 67
    return-void

    .line 373
    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    .line 406
    :array_1
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data

    .line 409
    :array_2
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 5
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1079
    sget-object v3, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v3, v3

    new-array v3, v3, [Ljava/util/HashMap;

    iput-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1080
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1124
    if-nez p1, :cond_0

    .line 1125
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "fileDescriptor cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1127
    :cond_0
    iput-object v4, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1128
    iput-object v4, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 1129
    invoke-static {p1}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1130
    iput-object p1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 1135
    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 1142
    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    .line 1143
    const/4 v1, 0x0

    .line 1145
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1146
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_2
    invoke-direct {p0, v2}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1148
    .end local v1    # "in":Ljava/io/FileInputStream;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1123
    return-void

    .line 1136
    .end local v2    # "in":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 1137
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 1140
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_1
    iput-object v4, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 1147
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    .line 1148
    .end local v1    # "in":Ljava/io/FileInputStream;
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1147
    throw v3

    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v1, "in":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1079
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1080
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1158
    if-nez p1, :cond_0

    .line 1159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1161
    :cond_0
    iput-object v1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 1162
    instance-of v0, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1163
    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v0, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1164
    iput-object v1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 1173
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    .line 1174
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V

    .line 1157
    return-void

    .line 1165
    :cond_1
    instance-of v0, p1, Ljava/io/FileInputStream;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 1166
    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v0

    .line 1165
    if-eqz v0, :cond_2

    .line 1167
    iput-object v1, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    move-object v0, p1

    .line 1168
    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 1170
    :cond_2
    iput-object v1, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1171
    iput-object v1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1079
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    new-array v2, v2, [Ljava/util/HashMap;

    iput-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1080
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1098
    if-nez p1, :cond_0

    .line 1099
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "filename cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1101
    :cond_0
    const/4 v0, 0x0

    .line 1102
    .local v0, "in":Ljava/io/FileInputStream;
    iput-object v3, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1103
    iput-object p1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 1104
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    .line 1106
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1107
    .end local v0    # "in":Ljava/io/FileInputStream;
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1108
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 1112
    :goto_0
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1114
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1097
    return-void

    .line 1110
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1113
    :catchall_0
    move-exception v2

    move-object v0, v1

    .line 1114
    .end local v1    # "in":Ljava/io/FileInputStream;
    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1113
    throw v2

    .restart local v0    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    goto :goto_1
.end method

.method private addDefaultValuesForCompatibility()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 2143
    const-string/jumbo v1, "DateTimeOriginal"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2144
    .local v0, "valueOfDateTimeOriginal":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2145
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v4

    const-string/jumbo v2, "DateTime"

    .line 2146
    invoke-static {v0}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 2145
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2150
    :cond_0
    const-string/jumbo v1, "ImageWidth"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2151
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v4

    const-string/jumbo v2, "ImageWidth"

    .line 2152
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v6, v7, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 2151
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2154
    :cond_1
    const-string/jumbo v1, "ImageLength"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2155
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v4

    const-string/jumbo v2, "ImageLength"

    .line 2156
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v6, v7, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 2155
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2158
    :cond_2
    const-string/jumbo v1, "Orientation"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2159
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v4

    const-string/jumbo v2, "Orientation"

    .line 2160
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v6, v7, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 2159
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2162
    :cond_3
    const-string/jumbo v1, "LightSource"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 2163
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string/jumbo v2, "LightSource"

    .line 2164
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v6, v7, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 2163
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2141
    :cond_4
    return-void
.end method

.method private static convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F
    .locals 18
    .param p0, "rationalString"    # Ljava/lang/String;
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 1799
    :try_start_0
    const-string/jumbo v9, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1802
    .local v8, "parts":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string/jumbo v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1803
    .local v5, "pair":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 1804
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 1803
    div-double v2, v14, v16

    .line 1806
    .local v2, "degrees":D
    const/4 v9, 0x1

    aget-object v9, v8, v9

    const-string/jumbo v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1807
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 1808
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 1807
    div-double v6, v14, v16

    .line 1810
    .local v6, "minutes":D
    const/4 v9, 0x2

    aget-object v9, v8, v9

    const-string/jumbo v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1811
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 1812
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 1811
    div-double v12, v14, v16

    .line 1814
    .local v12, "seconds":D
    const-wide/high16 v14, 0x404e000000000000L    # 60.0

    div-double v14, v6, v14

    add-double/2addr v14, v2

    const-wide v16, 0x40ac200000000000L    # 3600.0

    div-double v16, v12, v16

    add-double v10, v14, v16

    .line 1815
    .local v10, "result":D
    const-string/jumbo v9, "S"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "W"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_1

    .line 1816
    :cond_0
    neg-double v14, v10

    double-to-float v9, v14

    return v9

    .line 1818
    :cond_1
    double-to-float v9, v10

    return v9

    .line 1819
    .end local v2    # "degrees":D
    .end local v5    # "pair":[Ljava/lang/String;
    .end local v6    # "minutes":D
    .end local v8    # "parts":[Ljava/lang/String;
    .end local v10    # "result":D
    .end local v12    # "seconds":D
    :catch_0
    move-exception v4

    .line 1821
    .local v4, "e":Ljava/lang/RuntimeException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9
.end method

.method private getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1187
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1188
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1189
    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .end local v1    # "value":Ljava/lang/Object;
    return-object v1

    .line 1186
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1192
    .end local v1    # "value":Ljava/lang/Object;
    :cond_1
    return-object v3
.end method

.method private static getIfdHintFromTagNumber(I)I
    .locals 2
    .param p0, "tagNumber"    # I

    .prologue
    .line 2301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/media/ExifInterface;->IFD_POINTER_TAG_HINTS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2302
    sget-object v1, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    if-ne v1, p0, :cond_0

    .line 2303
    sget-object v1, Landroid/media/ExifInterface;->IFD_POINTER_TAG_HINTS:[I

    aget v1, v1, v0

    return v1

    .line 2301
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2306
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private getJpegAttributes(Ljava/io/InputStream;)V
    .locals 11
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1831
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1834
    .local v2, "dataInputStream":Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .local v5, "marker":B
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 1835
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid marker: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int/lit16 v8, v5, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1837
    :cond_0
    const/4 v1, 0x1

    .line 1838
    .local v1, "bytesRead":I
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    const/16 v7, -0x28

    if-eq v6, v7, :cond_1

    .line 1839
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid marker: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int/lit16 v8, v5, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1841
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 1843
    :goto_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 1844
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 1845
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid marker:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int/lit16 v8, v5, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1847
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 1848
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 1852
    add-int/lit8 v1, v1, 0x1

    .line 1856
    const/16 v6, -0x27

    if-eq v5, v6, :cond_3

    const/16 v6, -0x26

    if-ne v5, v6, :cond_4

    .line 1826
    :cond_3
    return-void

    .line 1859
    :cond_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    add-int/lit8 v4, v6, -0x2

    .line 1860
    .local v4, "length":I
    add-int/lit8 v1, v1, 0x2

    .line 1865
    if-gez v4, :cond_5

    .line 1866
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "Invalid length"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1868
    :cond_5
    sparse-switch v5, :sswitch_data_0

    .line 1944
    :cond_6
    :goto_1
    if-gez v4, :cond_c

    .line 1945
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "Invalid length"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1873
    :sswitch_0
    const/4 v6, 0x6

    if-lt v4, v6, :cond_6

    .line 1877
    const/4 v6, 0x6

    new-array v3, v6, [B

    .line 1878
    .local v3, "identifier":[B
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_7

    .line 1879
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "Invalid exif"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1881
    :cond_7
    add-int/lit8 v1, v1, 0x6

    .line 1882
    add-int/lit8 v4, v4, -0x6

    .line 1883
    sget-object v6, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v3, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1887
    if-gtz v4, :cond_8

    .line 1888
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "Invalid exif"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1893
    :cond_8
    new-array v0, v4, [B

    .line 1894
    .local v0, "bytes":[B
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    if-eq v6, v4, :cond_9

    .line 1895
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "Invalid exif"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1897
    :cond_9
    invoke-direct {p0, v0, v1}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    .line 1898
    add-int/2addr v1, v4

    .line 1899
    const/4 v4, 0x0

    .line 1900
    goto :goto_1

    .line 1904
    .end local v0    # "bytes":[B
    .end local v3    # "identifier":[B
    :sswitch_1
    new-array v0, v4, [B

    .line 1905
    .restart local v0    # "bytes":[B
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    if-eq v6, v4, :cond_a

    .line 1906
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "Invalid exif"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1908
    :cond_a
    const/4 v4, 0x0

    .line 1909
    const-string/jumbo v6, "UserComment"

    invoke-virtual {p0, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    .line 1910
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string/jumbo v7, "UserComment"

    .line 1911
    new-instance v8, Ljava/lang/String;

    sget-object v9, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v8, v0, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1910
    invoke-static {v8}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1929
    .end local v0    # "bytes":[B
    :sswitch_2
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_b

    .line 1930
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "Invalid SOFx"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1932
    :cond_b
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-string/jumbo v7, "ImageLength"

    .line 1933
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    int-to-long v8, v8

    iget-object v10, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1932
    invoke-static {v8, v9, v10}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-string/jumbo v7, "ImageWidth"

    .line 1935
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    int-to-long v8, v8

    iget-object v10, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1934
    invoke-static {v8, v9, v10}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1936
    add-int/lit8 v4, v4, -0x5

    .line 1937
    goto/16 :goto_1

    .line 1947
    :cond_c
    invoke-virtual {v2, v4}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v6

    if-eq v6, v4, :cond_d

    .line 1948
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "Invalid JPEG segment"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1950
    :cond_d
    add-int/2addr v1, v4

    goto/16 :goto_0

    .line 1868
    nop

    :sswitch_data_0
    .sparse-switch
        -0x40 -> :sswitch_2
        -0x3f -> :sswitch_2
        -0x3e -> :sswitch_2
        -0x3d -> :sswitch_2
        -0x3b -> :sswitch_2
        -0x3a -> :sswitch_2
        -0x39 -> :sswitch_2
        -0x37 -> :sswitch_2
        -0x36 -> :sswitch_2
        -0x35 -> :sswitch_2
        -0x33 -> :sswitch_2
        -0x32 -> :sswitch_2
        -0x31 -> :sswitch_2
        -0x1f -> :sswitch_0
        -0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method private static guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .locals 20
    .param p0, "entryValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2492
    const-string/jumbo v15, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 2493
    const-string/jumbo v15, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2494
    .local v6, "entryValues":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v6, v15

    invoke-static {v15}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 2495
    .local v2, "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v15, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 2496
    return-object v2

    .line 2498
    :cond_0
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_0
    array-length v15, v6

    if-ge v9, v15, :cond_8

    .line 2499
    aget-object v15, v6, v9

    invoke-static {v15}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8

    .line 2500
    .local v8, "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v7, -0x1

    .local v7, "first":I
    const/4 v14, -0x1

    .line 2501
    .local v14, "second":I
    iget-object v15, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 2502
    iget-object v15, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 2503
    :cond_1
    iget-object v15, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2505
    :cond_2
    iget-object v15, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    iget-object v15, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_3

    .line 2506
    iget-object v15, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 2507
    :cond_3
    iget-object v15, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 2509
    :cond_4
    const/4 v15, -0x1

    if-ne v7, v15, :cond_5

    const/4 v15, -0x1

    if-ne v14, v15, :cond_5

    .line 2510
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    .line 2512
    :cond_5
    const/4 v15, -0x1

    if-ne v7, v15, :cond_7

    .line 2513
    new-instance v2, Landroid/util/Pair;

    .end local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, -0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2498
    .restart local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2516
    :cond_7
    const/4 v15, -0x1

    if-ne v14, v15, :cond_6

    .line 2517
    new-instance v2, Landroid/util/Pair;

    .end local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, -0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2518
    .restart local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_1

    .line 2521
    .end local v7    # "first":I
    .end local v8    # "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v14    # "second":I
    :cond_8
    return-object v2

    .line 2524
    .end local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "entryValues":[Ljava/lang/String;
    .end local v9    # "i":I
    :cond_9
    const-string/jumbo v15, "/"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 2525
    const-string/jumbo v15, "/"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2526
    .local v11, "rationalNumber":[Ljava/lang/String;
    array-length v15, v11

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 2528
    const/4 v15, 0x0

    :try_start_0
    aget-object v15, v11, v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 2529
    .local v12, "numerator":J
    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 2530
    .local v4, "denominator":J
    const-wide/16 v16, 0x0

    cmp-long v15, v12, v16

    if-ltz v15, :cond_a

    const-wide/16 v16, 0x0

    cmp-long v15, v4, v16

    if-gez v15, :cond_b

    .line 2531
    :cond_a
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0xa

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    .line 2533
    :cond_b
    const-wide/32 v16, 0x7fffffff

    cmp-long v15, v12, v16

    if-gtz v15, :cond_c

    const-wide/32 v16, 0x7fffffff

    cmp-long v15, v4, v16

    if-lez v15, :cond_d

    .line 2534
    :cond_c
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    .line 2536
    :cond_d
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0xa

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v15

    .line 2537
    .end local v4    # "denominator":J
    .end local v12    # "numerator":J
    :catch_0
    move-exception v3

    .line 2541
    :cond_e
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    .line 2544
    .end local v11    # "rationalNumber":[Ljava/lang/String;
    :cond_f
    :try_start_1
    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 2545
    .local v10, "longValue":Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-ltz v15, :cond_10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/32 v18, 0xffff

    cmp-long v15, v16, v18

    if-gtz v15, :cond_10

    .line 2546
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    .line 2548
    :cond_10
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-gez v15, :cond_11

    .line 2549
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    .line 2551
    :cond_11
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v15

    .line 2552
    .end local v10    # "longValue":Ljava/lang/Long;
    :catch_1
    move-exception v3

    .line 2556
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-static/range {p0 .. p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 2557
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0xc

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v15

    .line 2558
    :catch_2
    move-exception v3

    .line 2561
    new-instance v15, Landroid/util/Pair;

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15
.end method

.method private handleRawResult(Ljava/util/HashMap;)Z
    .locals 6
    .param p1, "map"    # Ljava/util/HashMap;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1505
    if-nez p1, :cond_0

    .line 1506
    return v3

    .line 1510
    :cond_0
    iput-boolean v5, p0, Landroid/media/ExifInterface;->mIsRaw:Z

    .line 1512
    const-string/jumbo v4, "HasThumbnail"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1513
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    :cond_1
    iput-boolean v3, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 1514
    const-string/jumbo v3, "ThumbnailOffset"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "value":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1515
    .restart local v2    # "value":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1516
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 1518
    :cond_2
    const-string/jumbo v3, "ThumbnailLength"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "value":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1519
    .restart local v2    # "value":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1520
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    .line 1522
    :cond_3
    const-string/jumbo v3, "ThumbnailData"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iput-object v3, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 1524
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1525
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1528
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_4
    return v5
.end method

.method private static isJpegInputStream(Ljava/io/BufferedInputStream;)Z
    .locals 4
    .param p0, "in"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 1494
    invoke-virtual {p0, v3}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 1495
    new-array v1, v3, [B

    .line 1496
    .local v1, "signatureBytes":[B
    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 1497
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 1499
    :cond_0
    sget-object v2, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 1500
    .local v0, "isJpeg":Z
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    .line 1501
    return v0
.end method

.method private static isSeekableFD(Ljava/io/FileDescriptor;)Z
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1533
    const-wide/16 v2, 0x0

    :try_start_0
    sget v1, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-static {p0, v2, v3, v1}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1534
    const/4 v1, 0x1

    return v1

    .line 1535
    :catch_0
    move-exception v0

    .line 1536
    .local v0, "e":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    return v1
.end method

.method private loadAttributes(Ljava/io/InputStream;)V
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1451
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    :try_start_0
    sget-object v7, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v7, v7

    if-ge v5, v7, :cond_0

    .line 1452
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    aput-object v8, v7, v5

    .line 1451
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1456
    :cond_0
    iget-object v7, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v7, :cond_1

    .line 1457
    iget-object v7, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v7}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v2

    .line 1458
    .local v2, "asset":J
    invoke-static {v2, v3}, Landroid/media/ExifInterface;->nativeGetRawAttributesFromAsset(J)Ljava/util/HashMap;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->handleRawResult(Ljava/util/HashMap;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_4

    .line 1485
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 1459
    return-void

    .line 1461
    .end local v2    # "asset":J
    :cond_1
    :try_start_1
    iget-object v7, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v7, :cond_2

    .line 1463
    iget-object v7, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 1462
    invoke-static {v7}, Landroid/media/ExifInterface;->nativeGetRawAttributesFromFileDescriptor(Ljava/io/FileDescriptor;)Ljava/util/HashMap;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->handleRawResult(Ljava/util/HashMap;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_4

    .line 1485
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 1464
    return-void

    .line 1467
    :cond_2
    :try_start_2
    new-instance v6, Ljava/io/BufferedInputStream;

    const/4 v7, 0x3

    invoke-direct {v6, p1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1468
    .end local p1    # "in":Ljava/io/InputStream;
    .local v6, "in":Ljava/io/InputStream;
    :try_start_3
    move-object v0, v6

    check-cast v0, Ljava/io/BufferedInputStream;

    move-object v7, v0

    invoke-static {v7}, Landroid/media/ExifInterface;->isJpegInputStream(Ljava/io/BufferedInputStream;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1469
    invoke-static {v6}, Landroid/media/ExifInterface;->nativeGetRawAttributesFromInputStream(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v7

    .line 1468
    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->handleRawResult(Ljava/util/HashMap;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v7

    if-eqz v7, :cond_5

    .line 1485
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 1470
    return-void

    :cond_3
    move-object p1, v6

    .line 1475
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local p1    # "in":Ljava/io/InputStream;
    :cond_4
    :goto_1
    :try_start_4
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getJpegAttributes(Ljava/io/InputStream;)V

    .line 1476
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1485
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 1448
    :goto_2
    return-void

    .line 1477
    :catch_0
    move-exception v4

    .line 1480
    .local v4, "e":Ljava/io/IOException;
    :goto_3
    const/4 v7, 0x0

    :try_start_5
    iput-boolean v7, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z

    .line 1481
    const-string/jumbo v7, "ExifInterface"

    const-string/jumbo v8, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1485
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    goto :goto_2

    .line 1484
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1485
    :goto_4
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 1484
    throw v7

    .end local p1    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object p1, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local p1    # "in":Ljava/io/InputStream;
    goto :goto_4

    .line 1477
    .end local p1    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object p1, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local p1    # "in":Ljava/io/InputStream;
    goto :goto_3

    .end local v4    # "e":Ljava/io/IOException;
    .end local p1    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :cond_5
    move-object p1, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local p1    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private static native nativeGetRawAttributesFromAsset(J)Ljava/util/HashMap;
.end method

.method private static native nativeGetRawAttributesFromFileDescriptor(Ljava/io/FileDescriptor;)Ljava/util/HashMap;
.end method

.method private static native nativeGetRawAttributesFromInputStream(Ljava/io/InputStream;)Ljava/util/HashMap;
.end method

.method private static native nativeGetThumbnailFromAsset(JII)[B
.end method

.method private static native nativeInitRaw()V
.end method

.method private printAttributes()V
    .locals 7

    .prologue
    .line 1542
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 1543
    const-string/jumbo v4, "ExifInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The size of tag group["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1545
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 1546
    .local v3, "tagValue":Landroid/media/ExifInterface$ExifAttribute;
    const-string/jumbo v4, "ExifInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tagName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", tagType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/media/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1547
    const-string/jumbo v6, ", tagValue: \'"

    .line 1546
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1547
    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v6}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v6

    .line 1546
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1547
    const-string/jumbo v6, "\'"

    .line 1546
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1542
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "tagValue":Landroid/media/ExifInterface$ExifAttribute;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1541
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private readExifSegment([BI)V
    .locals 14
    .param p1, "exifBytes"    # [B
    .param p2, "exifOffsetFromBeginning"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2056
    new-instance v1, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;-><init>([B)V

    .line 2059
    .local v1, "dataInputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readShort()S

    move-result v0

    .line 2060
    .local v0, "byteOrder":S
    sparse-switch v0, :sswitch_data_0

    .line 2074
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Invalid byte order: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2065
    :sswitch_0
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v11, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2078
    :goto_0
    iget-object v11, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2080
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedShort()I

    move-result v9

    .line 2081
    .local v9, "startCode":I
    const/16 v11, 0x2a

    if-eq v9, v11, :cond_0

    .line 2082
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Invalid exif start: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2071
    .end local v9    # "startCode":I
    :sswitch_1
    sget-object v11, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v11, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    goto :goto_0

    .line 2086
    .restart local v9    # "startCode":I
    :cond_0
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v4

    .line 2087
    .local v4, "firstIfdOffset":J
    const-wide/16 v12, 0x8

    cmp-long v11, v4, v12

    if-ltz v11, :cond_1

    array-length v11, p1

    int-to-long v12, v11

    cmp-long v11, v4, v12

    if-ltz v11, :cond_2

    .line 2088
    :cond_1
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Invalid first Ifd offset: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2090
    :cond_2
    const-wide/16 v12, 0x8

    sub-long/2addr v4, v12

    .line 2091
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-lez v11, :cond_3

    .line 2092
    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->skip(J)J

    move-result-wide v12

    cmp-long v11, v12, v4

    if-eqz v11, :cond_3

    .line 2093
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Couldn\'t jump to first Ifd: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2098
    :cond_3
    const/4 v11, 0x0

    invoke-direct {p0, v1, v11}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;I)V

    .line 2101
    sget-object v11, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    iget-object v11, v11, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {p0, v11}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2103
    .local v8, "jpegInterchangeFormatString":Ljava/lang/String;
    sget-object v11, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    iget-object v11, v11, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {p0, v11}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2104
    .local v7, "jpegInterchangeFormatLengthString":Ljava/lang/String;
    if-eqz v8, :cond_4

    if-eqz v7, :cond_4

    .line 2106
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2107
    .local v3, "jpegInterchangeFormat":I
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2110
    .local v6, "jpegInterchangeFormatLength":I
    add-int v11, v3, v6

    .line 2111
    array-length v12, p1

    .line 2110
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    sub-int v6, v11, v3

    .line 2112
    if-lez v3, :cond_4

    if-lez v6, :cond_4

    .line 2113
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 2114
    add-int v11, p2, v3

    iput v11, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 2115
    iput v6, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    .line 2117
    iget-object v11, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v11, :cond_4

    iget-object v11, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v11, :cond_4

    .line 2118
    iget-object v11, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v11, :cond_4

    .line 2120
    new-array v10, v6, [B

    .line 2121
    .local v10, "thumbnailBytes":[B
    int-to-long v12, v3

    invoke-virtual {v1, v12, v13}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    .line 2122
    invoke-virtual {v1, v10}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readFully([B)V

    .line 2123
    iput-object v10, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2053
    .end local v3    # "jpegInterchangeFormat":I
    .end local v6    # "jpegInterchangeFormatLength":I
    .end local v10    # "thumbnailBytes":[B
    :cond_4
    :goto_1
    return-void

    .line 2135
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 2060
    nop

    :sswitch_data_0
    .sparse-switch
        0x4949 -> :sswitch_0
        0x4d4d -> :sswitch_1
    .end sparse-switch
.end method

.method private readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;I)V
    .locals 24
    .param p1, "dataInputStream"    # Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    .param p2, "hint"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2171
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->peek()J

    move-result-wide v20

    const-wide/16 v22, 0x2

    add-long v20, v20, v22

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-lez v19, :cond_0

    .line 2173
    return-void

    .line 2176
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readShort()S

    move-result v14

    .line 2177
    .local v14, "numberOfDirectoryEntry":S
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->peek()J

    move-result-wide v20

    mul-int/lit8 v19, v14, 0xc

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-lez v19, :cond_1

    .line 2179
    return-void

    .line 2186
    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v14, :cond_a

    .line 2187
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedShort()I

    move-result v18

    .line 2188
    .local v18, "tagNumber":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedShort()I

    move-result v6

    .line 2189
    .local v6, "dataFormat":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    move-result v9

    .line 2190
    .local v9, "numberOfComponents":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->peek()J

    move-result-wide v20

    const-wide/16 v22, 0x4

    add-long v10, v20, v22

    .line 2193
    .local v10, "nextEntryOffset":J
    sget-object v19, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v19, v19, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/ExifInterface$ExifTag;

    .line 2201
    .local v15, "tag":Landroid/media/ExifInterface$ExifTag;
    if-eqz v15, :cond_2

    if-gtz v6, :cond_4

    .line 2204
    :cond_2
    if-nez v15, :cond_6

    .line 2205
    const-string/jumbo v19, "ExifInterface"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Skip the tag entry since tag number is not defined: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    .line 2186
    :cond_3
    :goto_2
    add-int/lit8 v19, v7, 0x1

    move/from16 v0, v19

    int-to-short v7, v0

    .local v7, "i":S
    goto :goto_0

    .line 2202
    .end local v7    # "i":S
    :cond_4
    sget-object v19, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_2

    .line 2215
    sget-object v19, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v19, v19, v6

    mul-int v4, v9, v19

    .line 2216
    .local v4, "byteCount":I
    const/16 v19, 0x4

    move/from16 v0, v19

    if-le v4, v0, :cond_5

    .line 2217
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v16

    .line 2221
    .local v16, "offset":J
    int-to-long v0, v4

    move-wide/from16 v20, v0

    add-long v20, v20, v16

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-gtz v19, :cond_7

    .line 2222
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    .line 2232
    .end local v16    # "offset":J
    :cond_5
    invoke-static/range {v18 .. v18}, Landroid/media/ExifInterface;->getIfdHintFromTagNumber(I)I

    move-result v8

    .line 2237
    .local v8, "innerIfdHint":I
    if-ltz v8, :cond_9

    .line 2238
    const-wide/16 v16, -0x1

    .line 2240
    .restart local v16    # "offset":J
    packed-switch v6, :pswitch_data_0

    .line 2265
    :goto_3
    :pswitch_0
    const-wide/16 v20, 0x0

    cmp-long v19, v16, v20

    if-lez v19, :cond_8

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J

    move-result-wide v20

    cmp-long v19, v16, v20

    if-gez v19, :cond_8

    .line 2266
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    .line 2267
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;I)V

    .line 2272
    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    goto :goto_2

    .line 2207
    .end local v4    # "byteCount":I
    .end local v8    # "innerIfdHint":I
    .end local v16    # "offset":J
    :cond_6
    const-string/jumbo v19, "ExifInterface"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Skip the tag entry since data format is invalid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2225
    .restart local v4    # "byteCount":I
    .restart local v16    # "offset":J
    :cond_7
    const-string/jumbo v19, "ExifInterface"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Skip the tag entry since data offset is invalid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    goto/16 :goto_2

    .line 2242
    .restart local v8    # "innerIfdHint":I
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedShort()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 2243
    goto :goto_3

    .line 2246
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readShort()S

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 2247
    goto :goto_3

    .line 2250
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v16

    goto :goto_3

    .line 2254
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 2255
    goto/16 :goto_3

    .line 2269
    :cond_8
    const-string/jumbo v19, "ExifInterface"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Skip jump into the IFD since its offset is invalid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2276
    .end local v16    # "offset":J
    :cond_9
    sget-object v19, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v19, v19, v6

    mul-int v19, v19, v9

    move/from16 v0, v19

    new-array v5, v0, [B

    .line 2277
    .local v5, "bytes":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readFully([B)V

    .line 2278
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    .line 2279
    iget-object v0, v15, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Landroid/media/ExifInterface$ExifAttribute;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v6, v9, v5, v1}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[BLandroid/media/ExifInterface$ExifAttribute;)V

    .line 2278
    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2280
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->peek()J

    move-result-wide v20

    cmp-long v19, v20, v10

    if-eqz v19, :cond_3

    .line 2281
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    goto/16 :goto_2

    .line 2285
    .end local v4    # "byteCount":I
    .end local v5    # "bytes":[B
    .end local v6    # "dataFormat":I
    .end local v8    # "innerIfdHint":I
    .end local v9    # "numberOfComponents":I
    .end local v10    # "nextEntryOffset":J
    .end local v15    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v18    # "tagNumber":I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->peek()J

    move-result-wide v20

    const-wide/16 v22, 0x4

    add-long v20, v20, v22

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-gtz v19, :cond_b

    .line 2286
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v12

    .line 2292
    .local v12, "nextIfdOffset":J
    const-wide/16 v20, 0x8

    cmp-long v19, v12, v20

    if-lez v19, :cond_b

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->-get0(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J

    move-result-wide v20

    cmp-long v19, v12, v20

    if-gez v19, :cond_b

    .line 2293
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    .line 2294
    const/16 v19, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;I)V

    .line 2170
    .end local v12    # "nextIfdOffset":J
    :cond_b
    return-void

    .line 2240
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private removeAttribute(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1438
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1439
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1437
    :cond_0
    return-void
.end method

.method private saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 12
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1962
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1964
    .local v1, "dataInputStream":Ljava/io/DataInputStream;
    new-instance v2, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v2, p2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 1965
    .local v2, "dataOutputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 1966
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid marker"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1968
    :cond_0
    const/4 v7, -0x1

    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 1969
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    const/16 v8, -0x28

    if-eq v7, v8, :cond_1

    .line 1970
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid marker"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1972
    :cond_1
    const/16 v7, -0x28

    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 1975
    const/4 v7, -0x1

    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 1976
    const/16 v7, -0x1f

    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 1977
    const/4 v7, 0x6

    invoke-direct {p0, v2, v7}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;I)I

    .line 1979
    const/16 v7, 0x1000

    new-array v0, v7, [B

    .line 1982
    .local v0, "bytes":[B
    :cond_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 1983
    .local v5, "marker":B
    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    .line 1984
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid marker"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1986
    :cond_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 1987
    sparse-switch v5, :sswitch_data_0

    .line 2032
    const/4 v7, -0x1

    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 2033
    invoke-virtual {v2, v5}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 2034
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    .line 2035
    .local v4, "length":I
    invoke-virtual {v2, v4}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    .line 2036
    add-int/lit8 v4, v4, -0x2

    .line 2037
    if-gez v4, :cond_8

    .line 2038
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid length"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1989
    .end local v4    # "length":I
    :sswitch_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v7

    add-int/lit8 v4, v7, -0x2

    .line 1990
    .restart local v4    # "length":I
    if-gez v4, :cond_4

    .line 1991
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid length"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1993
    :cond_4
    const/4 v7, 0x6

    new-array v3, v7, [B

    .line 1994
    .local v3, "identifier":[B
    const/4 v7, 0x6

    if-lt v4, v7, :cond_6

    .line 1995
    invoke-virtual {v1, v3}, Ljava/io/DataInputStream;->read([B)I

    move-result v7

    const/4 v8, 0x6

    if-eq v7, v8, :cond_5

    .line 1996
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid exif"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1998
    :cond_5
    sget-object v7, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v3, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2000
    add-int/lit8 v7, v4, -0x6

    int-to-long v8, v7

    invoke-virtual {v1, v8, v9}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v8

    add-int/lit8 v7, v4, -0x6

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    .line 2001
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid length"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2007
    :cond_6
    const/4 v7, -0x1

    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 2008
    invoke-virtual {v2, v5}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 2009
    add-int/lit8 v7, v4, 0x2

    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    .line 2010
    const/4 v7, 0x6

    if-lt v4, v7, :cond_7

    .line 2011
    add-int/lit8 v4, v4, -0x6

    .line 2012
    invoke-virtual {v2, v3}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([B)V

    .line 2015
    :cond_7
    :goto_0
    if-lez v4, :cond_2

    .line 2016
    array-length v7, v0

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x0

    .line 2015
    invoke-virtual {v1, v0, v8, v7}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6

    .local v6, "read":I
    if-ltz v6, :cond_2

    .line 2017
    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7, v6}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([BII)V

    .line 2018
    sub-int/2addr v4, v6

    goto :goto_0

    .line 2024
    .end local v3    # "identifier":[B
    .end local v4    # "length":I
    .end local v6    # "read":I
    :sswitch_1
    const/4 v7, -0x1

    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 2025
    invoke-virtual {v2, v5}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 2027
    invoke-static {v1, v2}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 2028
    return-void

    .line 2041
    .restart local v4    # "length":I
    :cond_8
    :goto_1
    if-lez v4, :cond_2

    .line 2042
    array-length v7, v0

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x0

    .line 2041
    invoke-virtual {v1, v0, v8, v7}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6

    .restart local v6    # "read":I
    if-ltz v6, :cond_2

    .line 2043
    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7, v6}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([BII)V

    .line 2044
    sub-int/2addr v4, v6

    goto :goto_1

    .line 1987
    :sswitch_data_0
    .sparse-switch
        -0x27 -> :sswitch_1
        -0x26 -> :sswitch_1
        -0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method private updateAttribute(Ljava/lang/String;Landroid/media/ExifInterface$ExifAttribute;)Z
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/media/ExifInterface$ExifAttribute;

    .prologue
    .line 1422
    const/4 v1, 0x0

    .line 1423
    .local v1, "updated":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1424
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1425
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    const/4 v1, 0x1

    .line 1423
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1429
    :cond_1
    return v1
.end method

.method private writeExifSegment(Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;I)I
    .locals 26
    .param p1, "dataOutputStream"    # Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;
    .param p2, "exifOffsetFromBeginning"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2313
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v12, v0, [I

    .line 2314
    .local v12, "ifdOffsets":[I
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v11, v0, [I

    .line 2317
    .local v11, "ifdDataSizes":[I
    sget-object v22, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v21, 0x0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    aget-object v17, v22, v21

    .line 2318
    .local v17, "tag":Landroid/media/ExifInterface$ExifTag;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 2317
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 2321
    .end local v17    # "tag":Landroid/media/ExifInterface$ExifTag;
    :cond_0
    sget-object v21, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 2322
    sget-object v21, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 2325
    const/4 v9, 0x0

    .local v9, "hint":I
    :goto_1
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_3

    .line 2326
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v22

    const/16 v21, 0x0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    :goto_2
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    aget-object v13, v22, v21

    .local v13, "obj":Ljava/lang/Object;
    move-object v6, v13

    .line 2327
    check-cast v6, Ljava/util/Map$Entry;

    .line 2328
    .local v6, "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    if-nez v24, :cond_1

    .line 2329
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v24, v0

    aget-object v24, v24, v9

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2326
    :cond_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 2325
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v13    # "obj":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2336
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_4

    .line 2337
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x2

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2338
    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    .line 2337
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2340
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_5

    .line 2341
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2342
    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    .line 2341
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2344
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_6

    .line 2345
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x1

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2346
    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    .line 2345
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2348
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 2349
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2350
    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    .line 2349
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2351
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2352
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    .line 2351
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2357
    :cond_7
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_a

    .line 2358
    const/16 v16, 0x0

    .line 2359
    .local v16, "sum":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v10

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "entry$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2360
    .restart local v6    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/ExifInterface$ExifAttribute;

    .line 2361
    .local v8, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    invoke-virtual {v8}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    move-result v15

    .line 2362
    .local v15, "size":I
    const/16 v21, 0x4

    move/from16 v0, v21

    if-le v15, v0, :cond_8

    .line 2363
    add-int v16, v16, v15

    goto :goto_4

    .line 2366
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v8    # "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v15    # "size":I
    :cond_9
    aget v21, v11, v10

    add-int v21, v21, v16

    aput v21, v11, v10

    .line 2357
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2370
    .end local v7    # "entry$iterator":Ljava/util/Iterator;
    .end local v16    # "sum":I
    :cond_a
    const/16 v14, 0x8

    .line 2371
    .local v14, "position":I
    const/4 v9, 0x0

    :goto_5
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_c

    .line 2372
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_b

    .line 2373
    aput v14, v12, v9

    .line 2374
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    mul-int/lit8 v21, v21, 0xc

    add-int/lit8 v21, v21, 0x2

    add-int/lit8 v21, v21, 0x4

    aget v22, v11, v9

    add-int v21, v21, v22

    add-int v14, v14, v21

    .line 2371
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 2377
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    move/from16 v21, v0

    if-eqz v21, :cond_d

    .line 2378
    move/from16 v19, v14

    .line 2379
    .local v19, "thumbnailOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2380
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    .line 2379
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2381
    add-int v21, p2, v19

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 2382
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    move/from16 v21, v0

    add-int v14, v14, v21

    .line 2386
    .end local v19    # "thumbnailOffset":I
    :cond_d
    add-int/lit8 v20, v14, 0x8

    .line 2396
    .local v20, "totalSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_e

    .line 2397
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2398
    const/16 v23, 0x1

    aget v23, v12, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    .line 2397
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2400
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_f

    .line 2401
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x1

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2402
    const/16 v23, 0x2

    aget v23, v12, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    .line 2401
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2404
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_10

    .line 2405
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    sget-object v22, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v23, 0x2

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2406
    const/16 v23, 0x3

    aget v23, v12, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    .line 2405
    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2410
    :cond_10
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    .line 2411
    sget-object v21, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([B)V

    .line 2412
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v21, v0

    sget-object v22, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_12

    .line 2413
    const/16 v21, 0x4d4d

    .line 2412
    :goto_6
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeShort(S)V

    .line 2414
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2415
    const/16 v21, 0x2a

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    .line 2416
    const-wide/16 v22, 0x8

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedInt(J)V

    .line 2419
    const/4 v9, 0x0

    :goto_7
    sget-object v21, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_19

    .line 2420
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_18

    .line 2423
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    .line 2426
    aget v21, v12, v9

    add-int/lit8 v21, v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v22, v0

    aget-object v22, v22, v9

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v22

    mul-int/lit8 v22, v22, 0xc

    add-int v21, v21, v22

    add-int/lit8 v5, v21, 0x4

    .line 2427
    .local v5, "dataOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "entry$iterator":Ljava/util/Iterator;
    :cond_11
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2429
    .restart local v6    # "entry":Ljava/util/Map$Entry;
    sget-object v21, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v21, v21, v9

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/media/ExifInterface$ExifTag;

    .line 2430
    .restart local v17    # "tag":Landroid/media/ExifInterface$ExifTag;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/media/ExifInterface$ExifTag;->number:I

    move/from16 v18, v0

    .line 2431
    .local v18, "tagNumber":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 2432
    .local v4, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    invoke-virtual {v4}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    move-result v15

    .line 2434
    .restart local v15    # "size":I
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    .line 2435
    iget v0, v4, Landroid/media/ExifInterface$ExifAttribute;->format:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    .line 2436
    iget v0, v4, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeInt(I)V

    .line 2437
    const/16 v21, 0x4

    move/from16 v0, v21

    if-le v15, v0, :cond_13

    .line 2438
    int-to-long v0, v5

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedInt(J)V

    .line 2439
    add-int/2addr v5, v15

    goto :goto_8

    .line 2413
    .end local v4    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v5    # "dataOffset":I
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v7    # "entry$iterator":Ljava/util/Iterator;
    .end local v15    # "size":I
    .end local v17    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v18    # "tagNumber":I
    :cond_12
    const/16 v21, 0x4949

    goto/16 :goto_6

    .line 2441
    .restart local v4    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v5    # "dataOffset":I
    .restart local v6    # "entry":Ljava/util/Map$Entry;
    .restart local v7    # "entry$iterator":Ljava/util/Iterator;
    .restart local v15    # "size":I
    .restart local v17    # "tag":Landroid/media/ExifInterface$ExifTag;
    .restart local v18    # "tagNumber":I
    :cond_13
    iget-object v0, v4, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([B)V

    .line 2443
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ge v15, v0, :cond_11

    .line 2444
    move v10, v15

    :goto_9
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ge v10, v0, :cond_11

    .line 2445
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 2444
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 2454
    .end local v4    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v15    # "size":I
    .end local v17    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v18    # "tagNumber":I
    :cond_14
    if-nez v9, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_17

    .line 2457
    :cond_15
    const-wide/16 v22, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedInt(J)V

    .line 2461
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_16
    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2462
    .restart local v6    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 2464
    .restart local v4    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v0, v4, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_16

    .line 2465
    iget-object v0, v4, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v21, v0

    iget-object v0, v4, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([BII)V

    goto :goto_b

    .line 2455
    .end local v4    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v6    # "entry":Ljava/util/Map$Entry;
    :cond_17
    const/16 v21, 0x4

    aget v21, v12, v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedInt(J)V

    goto :goto_a

    .line 2419
    .end local v5    # "dataOffset":I
    .end local v7    # "entry$iterator":Ljava/util/Iterator;
    :cond_18
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7

    .line 2472
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1a

    .line 2473
    invoke-virtual/range {p0 .. p0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([B)V

    .line 2477
    :cond_1a
    sget-object v21, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2479
    return v20
.end method


# virtual methods
.method public getAltitude(D)D
    .locals 9
    .param p1, "defaultValue"    # D

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 1725
    const-string/jumbo v5, "GPSAltitude"

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v5, v6, v7}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 1726
    .local v0, "altitude":D
    const-string/jumbo v5, "GPSAltitudeRef"

    invoke-virtual {p0, v5, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 1728
    .local v2, "ref":I
    const-wide/16 v6, 0x0

    cmpl-double v5, v0, v6

    if-ltz v5, :cond_1

    if-ltz v2, :cond_1

    .line 1729
    if-ne v2, v4, :cond_0

    :goto_0
    int-to-double v4, v3

    mul-double/2addr v4, v0

    return-wide v4

    :cond_0
    move v3, v4

    goto :goto_0

    .line 1731
    :cond_1
    return-wide p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 1202
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v1

    .line 1203
    .local v1, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_4

    .line 1204
    sget-object v3, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1205
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1207
    :cond_0
    const-string/jumbo v3, "GPSTimeStamp"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1209
    iget v3, v1, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    .line 1210
    iget v3, v1, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 1211
    return-object v6

    .line 1213
    :cond_1
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->-wrap0(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/ExifInterface$Rational;

    .line 1214
    .local v0, "array":[Landroid/media/ExifInterface$Rational;
    array-length v3, v0

    if-eq v3, v5, :cond_2

    .line 1215
    return-object v6

    .line 1217
    :cond_2
    const-string/jumbo v3, "%02d:%02d:%02d"

    new-array v4, v5, [Ljava/lang/Object;

    .line 1218
    aget-object v5, v0, v8

    iget-wide v6, v5, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v6

    aget-object v6, v0, v8

    iget-wide v6, v6, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1219
    aget-object v5, v0, v9

    iget-wide v6, v5, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v6

    aget-object v6, v0, v9

    iget-wide v6, v6, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    .line 1220
    aget-object v5, v0, v10

    iget-wide v6, v5, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v6

    aget-object v6, v0, v10

    iget-wide v6, v6, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    .line 1217
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1223
    .end local v0    # "array":[Landroid/media/ExifInterface$Rational;
    :cond_3
    :try_start_0
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 1224
    :catch_0
    move-exception v2

    .line 1225
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-object v6

    .line 1228
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    return-object v6
.end method

.method public getAttributeDouble(Ljava/lang/String;D)D
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 1261
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v1

    .line 1262
    .local v1, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-nez v1, :cond_0

    .line 1263
    return-wide p2

    .line 1267
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 1268
    :catch_0
    move-exception v0

    .line 1269
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide p2
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 1240
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v1

    .line 1241
    .local v1, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-nez v1, :cond_0

    .line 1242
    return p2

    .line 1246
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1247
    :catch_0
    move-exception v0

    .line 1248
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public getDateTime()J
    .locals 14

    .prologue
    const-wide/16 v12, -0x1

    .line 1741
    const-string/jumbo v10, "DateTime"

    invoke-virtual {p0, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1742
    .local v0, "dateTimeString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1743
    sget-object v10, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1745
    new-instance v6, Ljava/text/ParsePosition;

    const/4 v10, 0x0

    invoke-direct {v6, v10}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1749
    .local v6, "pos":Ljava/text/ParsePosition;
    :try_start_0
    sget-object v10, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10, v0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 1750
    .local v1, "datetime":Ljava/util/Date;
    if-nez v1, :cond_1

    return-wide v12

    .line 1743
    .end local v1    # "datetime":Ljava/util/Date;
    .end local v6    # "pos":Ljava/text/ParsePosition;
    :cond_0
    return-wide v12

    .line 1751
    .restart local v1    # "datetime":Ljava/util/Date;
    .restart local v6    # "pos":Ljava/text/ParsePosition;
    :cond_1
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 1753
    .local v4, "msecs":J
    const-string/jumbo v10, "SubSecTime"

    invoke-virtual {p0, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1754
    .local v7, "subSecs":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 1756
    :try_start_1
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1757
    .local v8, "sub":J
    :goto_0
    const-wide/16 v10, 0x3e8

    cmp-long v10, v8, v10

    if-lez v10, :cond_2

    .line 1758
    const-wide/16 v10, 0xa

    div-long/2addr v8, v10
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1760
    :cond_2
    add-long/2addr v4, v8

    .line 1765
    .end local v8    # "sub":J
    :cond_3
    :goto_1
    return-wide v4

    .line 1766
    .end local v1    # "datetime":Ljava/util/Date;
    .end local v4    # "msecs":J
    .end local v7    # "subSecs":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1767
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    return-wide v12

    .line 1761
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "datetime":Ljava/util/Date;
    .restart local v4    # "msecs":J
    .restart local v7    # "subSecs":Ljava/lang/String;
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/lang/NumberFormatException;
    goto :goto_1
.end method

.method public getGpsDateTime()J
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    .line 1777
    const-string/jumbo v6, "GPSDateStamp"

    invoke-virtual {p0, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1778
    .local v0, "date":Ljava/lang/String;
    const-string/jumbo v6, "GPSTimeStamp"

    invoke-virtual {p0, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1779
    .local v5, "time":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez v5, :cond_1

    .line 1782
    :cond_0
    return-wide v8

    .line 1780
    :cond_1
    sget-object v6, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1781
    sget-object v6, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1785
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1787
    .local v1, "dateTimeString":Ljava/lang/String;
    new-instance v4, Ljava/text/ParsePosition;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1789
    .local v4, "pos":Ljava/text/ParsePosition;
    :try_start_0
    sget-object v6, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 1790
    .local v2, "datetime":Ljava/util/Date;
    if-nez v2, :cond_3

    return-wide v8

    .line 1791
    :cond_3
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    return-wide v6

    .line 1792
    .end local v2    # "datetime":Ljava/util/Date;
    :catch_0
    move-exception v3

    .line 1793
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    return-wide v8
.end method

.method public getLatLong([F)Z
    .locals 9
    .param p1, "output"    # [F

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1700
    const-string/jumbo v5, "GPSLatitude"

    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1701
    .local v2, "latValue":Ljava/lang/String;
    const-string/jumbo v5, "GPSLatitudeRef"

    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1702
    .local v1, "latRef":Ljava/lang/String;
    const-string/jumbo v5, "GPSLongitude"

    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1703
    .local v4, "lngValue":Ljava/lang/String;
    const-string/jumbo v5, "GPSLongitudeRef"

    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1705
    .local v3, "lngRef":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 1707
    :try_start_0
    invoke-static {v2, v1}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x0

    aput v5, p1, v6

    .line 1708
    invoke-static {v4, v3}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x1

    aput v5, p1, v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1709
    return v8

    .line 1710
    :catch_0
    move-exception v0

    .line 1715
    :cond_0
    return v7
.end method

.method public getThumbnail()[B
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1635
    iget-boolean v5, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-nez v5, :cond_0

    .line 1636
    return-object v10

    .line 1638
    :cond_0
    iget-object v5, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    if-eqz v5, :cond_1

    .line 1639
    iget-object v5, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    return-object v5

    .line 1643
    :cond_1
    const/4 v3, 0x0

    .line 1645
    .local v3, "in":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v5, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v5, :cond_2

    .line 1647
    iget-object v5, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v5}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v6

    iget v5, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    iget v8, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    .line 1646
    invoke-static {v6, v7, v5, v8}, Landroid/media/ExifInterface;->nativeGetThumbnailFromAsset(JII)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1670
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1646
    return-object v5

    .line 1648
    :cond_2
    :try_start_1
    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 1649
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .local v4, "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .line 1655
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "in":Ljava/io/FileInputStream;
    :cond_3
    :goto_0
    if-nez v3, :cond_5

    .line 1657
    new-instance v5, Ljava/io/FileNotFoundException;

    invoke-direct {v5}, Ljava/io/FileNotFoundException;-><init>()V

    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1667
    :catch_0
    move-exception v1

    .line 1670
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1672
    return-object v10

    .line 1650
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :cond_4
    :try_start_2
    iget-object v5, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v5, :cond_3

    .line 1651
    iget-object v5, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v5}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 1652
    .local v2, "fileDescriptor":Ljava/io/FileDescriptor;
    const-wide/16 v6, 0x0

    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v2, v6, v7, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 1653
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .restart local v4    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v3, "in":Ljava/io/FileInputStream;
    goto :goto_0

    .line 1659
    .end local v2    # "fileDescriptor":Ljava/io/FileDescriptor;
    .end local v3    # "in":Ljava/io/FileInputStream;
    :cond_5
    iget v5, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v6

    iget v5, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-eqz v5, :cond_6

    .line 1660
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Corrupted image"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1669
    :catchall_0
    move-exception v5

    .line 1670
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1669
    throw v5

    .line 1662
    :cond_6
    :try_start_3
    iget v5, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    new-array v0, v5, [B

    .line 1663
    .local v0, "buffer":[B
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    iget v6, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    if-eq v5, v6, :cond_7

    .line 1664
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Corrupted image"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1670
    :cond_7
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1666
    return-object v0
.end method

.method public getThumbnailRange()[J
    .locals 4

    .prologue
    .line 1683
    iget-boolean v1, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-nez v1, :cond_0

    .line 1684
    const/4 v1, 0x0

    return-object v1

    .line 1687
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [J

    .line 1688
    .local v0, "range":[J
    iget v1, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v2, v1

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    .line 1689
    iget v1, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    int-to-long v2, v1

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    .line 1691
    return-object v0
.end method

.method public hasThumbnail()Z
    .locals 1

    .prologue
    .line 1626
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    return v0
.end method

.method public saveAttributes()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 1562
    iget-boolean v8, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Landroid/media/ExifInterface;->mIsRaw:Z

    if-eqz v8, :cond_1

    .line 1563
    :cond_0
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "ExifInterface only supports saving attributes on JPEG formats."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1565
    :cond_1
    iget-boolean v8, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v8, :cond_3

    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 1566
    :cond_2
    new-instance v8, Ljava/io/IOException;

    .line 1567
    const-string/jumbo v9, "ExifInterface does not support saving attributes for the current input."

    .line 1566
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1571
    :cond_3
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v8

    iput-object v8, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 1573
    const/4 v1, 0x0

    .line 1574
    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 1575
    .local v4, "out":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 1578
    .local v6, "tempFile":Ljava/io/File;
    :try_start_0
    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 1579
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1580
    .end local v6    # "tempFile":Ljava/io/File;
    .local v7, "tempFile":Ljava/io/File;
    :try_start_1
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1581
    .local v3, "originalFile":Ljava/io/File;
    invoke-virtual {v3, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1582
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Could\'nt rename to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1591
    .end local v3    # "originalFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/system/ErrnoException;
    move-object v6, v7

    .line 1592
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v7    # "tempFile":Ljava/io/File;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v8

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1593
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v8

    .line 1594
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1595
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1593
    throw v8

    .line 1584
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "tempFile":Ljava/io/File;
    :cond_4
    :try_start_3
    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v8, :cond_5

    .line 1585
    const-string/jumbo v8, "temp"

    const-string/jumbo v9, "jpg"

    invoke-static {v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 1586
    .local v6, "tempFile":Ljava/io/File;
    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    const-wide/16 v10, 0x0

    sget v9, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v8, v10, v11, v9}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 1587
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v2, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1588
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_4
    new-instance v5, Ljava/io/FileOutputStream;

    .end local v1    # "in":Ljava/io/FileInputStream;
    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1589
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_5
    invoke-static {v2, v5}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .end local v4    # "out":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 1594
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "tempFile":Ljava/io/File;
    :cond_5
    :goto_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1595
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1598
    const/4 v1, 0x0

    .line 1599
    .restart local v1    # "in":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 1602
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_6
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1603
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :try_start_7
    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 1604
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .restart local v5    # "out":Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 1609
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :cond_6
    :goto_3
    invoke-direct {p0, v2, v4}, Landroid/media/ExifInterface;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1613
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1614
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1615
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1619
    iput-object v12, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 1561
    return-void

    .line 1605
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_7
    :try_start_8
    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v8, :cond_6

    .line 1606
    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    const-wide/16 v10, 0x0

    sget v9, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v8, v10, v11, v9}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 1607
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v8, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .restart local v5    # "out":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1610
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 1611
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Landroid/system/ErrnoException;
    :goto_4
    :try_start_9
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v8

    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1612
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catchall_1
    move-exception v8

    .line 1613
    :goto_5
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1614
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1615
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1612
    throw v8

    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v1, "in":Ljava/io/FileInputStream;
    goto :goto_5

    .line 1610
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Landroid/system/ErrnoException;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 1593
    .end local v0    # "e":Landroid/system/ErrnoException;
    .local v1, "in":Ljava/io/FileInputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "tempFile":Ljava/io/File;
    :catchall_3
    move-exception v8

    move-object v6, v7

    .end local v7    # "tempFile":Ljava/io/File;
    .restart local v6    # "tempFile":Ljava/io/File;
    goto/16 :goto_1

    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catchall_4
    move-exception v8

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v1, "in":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v8

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 1591
    .end local v6    # "tempFile":Ljava/io/File;
    .local v1, "in":Ljava/io/FileInputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Landroid/system/ErrnoException;
    goto/16 :goto_0

    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "tempFile":Ljava/io/File;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Landroid/system/ErrnoException;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v1, "in":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    .restart local v0    # "e":Landroid/system/ErrnoException;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v6    # "tempFile":Ljava/io/File;
    .local v1, "in":Ljava/io/FileInputStream;
    .restart local v3    # "originalFile":Ljava/io/File;
    .local v4, "out":Ljava/io/FileOutputStream;
    .restart local v7    # "tempFile":Ljava/io/File;
    :cond_8
    move-object v6, v7

    .end local v7    # "tempFile":Ljava/io/File;
    .restart local v6    # "tempFile":Ljava/io/File;
    goto :goto_2
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1281
    if-eqz p2, :cond_1

    sget-object v3, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1282
    const-string/jumbo v3, "GPSTimeStamp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1283
    sget-object v3, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    .line 1284
    .local v19, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1285
    const-string/jumbo v3, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid value for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    return-void

    .line 1288
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/1,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/1,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1289
    const/4 v4, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1288
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1289
    const-string/jumbo v4, "/1"

    .line 1288
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1301
    .end local v19    # "m":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    sget-object v3, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v3, v3

    if-ge v15, v3, :cond_14

    .line 1302
    const/4 v3, 0x4

    if-ne v15, v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v3, :cond_3

    .line 1305
    :cond_2
    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 1306
    .local v21, "obj":Ljava/lang/Object;
    if-eqz v21, :cond_3

    .line 1307
    if-nez p2, :cond_5

    .line 1308
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    .end local v21    # "obj":Ljava/lang/Object;
    :cond_3
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1292
    .end local v15    # "i":I
    :cond_4
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 1293
    .local v10, "doubleValue":D
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v4, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v4, v10

    double-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/10000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 1294
    .end local v10    # "doubleValue":D
    :catch_0
    move-exception v12

    .line 1295
    .local v12, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid value for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    return-void

    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .restart local v15    # "i":I
    .restart local v21    # "obj":Ljava/lang/Object;
    :cond_5
    move-object/from16 v13, v21

    .line 1311
    check-cast v13, Landroid/media/ExifInterface$ExifTag;

    .line 1312
    .local v13, "exifTag":Landroid/media/ExifInterface$ExifTag;
    invoke-static/range {p2 .. p2}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v14

    .line 1314
    .local v14, "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget v4, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v4, v3, :cond_6

    iget v4, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v4, v3, :cond_7

    .line 1315
    :cond_6
    iget v2, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 1332
    .local v2, "dataFormat":I
    :goto_3
    packed-switch v2, :pswitch_data_0

    .line 1407
    :pswitch_0
    const-string/jumbo v3, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Data format isn\'t one of expected formats: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1316
    .end local v2    # "dataFormat":I
    :cond_7
    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_9

    iget v4, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v4, v3, :cond_8

    .line 1317
    iget v4, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v4, v3, :cond_9

    .line 1318
    :cond_8
    iget v2, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    .restart local v2    # "dataFormat":I
    goto :goto_3

    .line 1319
    .end local v2    # "dataFormat":I
    :cond_9
    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_a

    .line 1320
    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_b

    .line 1322
    :cond_a
    iget v2, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    .restart local v2    # "dataFormat":I
    goto :goto_3

    .line 1321
    .end local v2    # "dataFormat":I
    :cond_b
    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_a

    .line 1324
    const-string/jumbo v4, "ExifInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Given tag ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ") value didn\'t match with one of expected "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1325
    const-string/jumbo v5, "formats: "

    .line 1324
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1325
    sget-object v5, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v6, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    aget-object v5, v5, v6

    .line 1324
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1326
    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_c

    const-string/jumbo v3, ""

    .line 1324
    :goto_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1327
    const-string/jumbo v5, " (guess: "

    .line 1324
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1328
    sget-object v6, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v6, v3

    .line 1324
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1328
    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_d

    const-string/jumbo v3, ""

    .line 1324
    :goto_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1329
    const-string/jumbo v5, ")"

    .line 1324
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1326
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1327
    sget-object v6, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v7, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    aget-object v6, v6, v7

    .line 1326
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 1328
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1329
    sget-object v7, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v7, v3

    .line 1328
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 1334
    .restart local v2    # "dataFormat":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    invoke-static/range {p2 .. p2}, Landroid/media/ExifInterface$ExifAttribute;->createByte(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1339
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    invoke-static/range {p2 .. p2}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1343
    :pswitch_3
    const-string/jumbo v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1344
    .local v23, "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 1345
    .local v16, "intArray":[I
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_6
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_e

    .line 1346
    aget-object v3, v23, v17

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v16, v17

    .line 1345
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 1348
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    .line 1349
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 1348
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1353
    .end local v16    # "intArray":[I
    .end local v17    # "j":I
    .end local v23    # "values":[Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1354
    .restart local v23    # "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 1355
    .restart local v16    # "intArray":[I
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_7
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_f

    .line 1356
    aget-object v3, v23, v17

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v16, v17

    .line 1355
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 1358
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    .line 1359
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 1358
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1363
    .end local v16    # "intArray":[I
    .end local v17    # "j":I
    .end local v23    # "values":[Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1364
    .restart local v23    # "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v3, v0

    new-array v0, v3, [J

    move-object/from16 v18, v0

    .line 1365
    .local v18, "longArray":[J
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_8
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_10

    .line 1366
    aget-object v3, v23, v17

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v18, v17

    .line 1365
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 1368
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    .line 1369
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 1368
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1373
    .end local v17    # "j":I
    .end local v18    # "longArray":[J
    .end local v23    # "values":[Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1374
    .restart local v23    # "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v3, v0

    new-array v0, v3, [Landroid/media/ExifInterface$Rational;

    move-object/from16 v22, v0

    .line 1375
    .local v22, "rationalArray":[Landroid/media/ExifInterface$Rational;
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_9
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_11

    .line 1376
    aget-object v3, v23, v17

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1377
    .local v20, "numbers":[Ljava/lang/String;
    new-instance v3, Landroid/media/ExifInterface$Rational;

    const/4 v4, 0x0

    aget-object v4, v20, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1378
    const/4 v6, 0x1

    aget-object v6, v20, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1377
    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational;)V

    aput-object v3, v22, v17

    .line 1375
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 1380
    .end local v20    # "numbers":[Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    .line 1381
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 1380
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1385
    .end local v17    # "j":I
    .end local v22    # "rationalArray":[Landroid/media/ExifInterface$Rational;
    .end local v23    # "values":[Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1386
    .restart local v23    # "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v3, v0

    new-array v0, v3, [Landroid/media/ExifInterface$Rational;

    move-object/from16 v22, v0

    .line 1387
    .restart local v22    # "rationalArray":[Landroid/media/ExifInterface$Rational;
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_a
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_12

    .line 1388
    aget-object v3, v23, v17

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1389
    .restart local v20    # "numbers":[Ljava/lang/String;
    new-instance v3, Landroid/media/ExifInterface$Rational;

    const/4 v4, 0x0

    aget-object v4, v20, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1390
    const/4 v6, 0x1

    aget-object v6, v20, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1389
    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational;)V

    aput-object v3, v22, v17

    .line 1387
    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    .line 1392
    .end local v20    # "numbers":[Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    .line 1393
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 1392
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1397
    .end local v17    # "j":I
    .end local v22    # "rationalArray":[Landroid/media/ExifInterface$Rational;
    .end local v23    # "values":[Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1398
    .restart local v23    # "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v3, v0

    new-array v9, v3, [D

    .line 1399
    .local v9, "doubleArray":[D
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_b
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_13

    .line 1400
    aget-object v3, v23, v17

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    aput-wide v4, v9, v17

    .line 1399
    add-int/lit8 v17, v17, 0x1

    goto :goto_b

    .line 1402
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    .line 1403
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v9, v4}, Landroid/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 1402
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1279
    .end local v2    # "dataFormat":I
    .end local v9    # "doubleArray":[D
    .end local v13    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .end local v14    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v17    # "j":I
    .end local v21    # "obj":Ljava/lang/Object;
    .end local v23    # "values":[Ljava/lang/String;
    :cond_14
    return-void

    .line 1332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
