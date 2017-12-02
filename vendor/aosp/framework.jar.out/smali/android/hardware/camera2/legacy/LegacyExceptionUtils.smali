.class public Landroid/hardware/camera2/legacy/LegacyExceptionUtils;
.super Ljava/lang/Object;
.source "LegacyExceptionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    }
.end annotation


# static fields
.field public static final ALREADY_EXISTS:I

.field public static final BAD_VALUE:I

.field public static final DEAD_OBJECT:I

.field public static final INVALID_OPERATION:I

.field public static final NO_ERROR:I = 0x0

.field public static final PERMISSION_DENIED:I

.field private static final TAG:Ljava/lang/String; = "LegacyExceptionUtils"

.field public static final TIMED_OUT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget v0, Landroid/system/OsConstants;->EPERM:I

    neg-int v0, v0

    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->PERMISSION_DENIED:I

    .line 33
    sget v0, Landroid/system/OsConstants;->EEXIST:I

    neg-int v0, v0

    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->ALREADY_EXISTS:I

    .line 34
    sget v0, Landroid/system/OsConstants;->EINVAL:I

    neg-int v0, v0

    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    .line 35
    sget v0, Landroid/system/OsConstants;->ENOSYS:I

    neg-int v0, v0

    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->DEAD_OBJECT:I

    .line 36
    sget v0, Landroid/system/OsConstants;->EPIPE:I

    neg-int v0, v0

    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->INVALID_OPERATION:I

    .line 37
    sget v0, Landroid/system/OsConstants;->ETIMEDOUT:I

    neg-int v0, v0

    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->TIMED_OUT:I

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static throwOnError(I)I
    .locals 3
    .param p0, "errorFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 70
    if-nez p0, :cond_0

    .line 71
    return v0

    .line 72
    :cond_0
    sget v0, Landroid/system/OsConstants;->ENODEV:I

    neg-int v0, v0

    if-ne p0, v0, :cond_1

    .line 73
    new-instance v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;

    invoke-direct {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;-><init>()V

    throw v0

    .line 76
    :cond_1
    if-gez p0, :cond_2

    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_2
    return p0
.end method

.method public static throwOnServiceError(I)V
    .locals 4
    .param p0, "errorFlag"    # I

    .prologue
    .line 88
    const/16 v0, 0xa

    .line 91
    .local v0, "errorCode":I
    if-ltz p0, :cond_0

    .line 92
    return-void

    .line 93
    :cond_0
    sget v2, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->PERMISSION_DENIED:I

    if-ne p0, v2, :cond_1

    .line 94
    const/4 v0, 0x1

    .line 95
    const-string/jumbo v1, "Lacking privileges to access camera service"

    .line 132
    .local v1, "errorMsg":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/os/ServiceSpecificException;

    invoke-direct {v2, v0, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 96
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_1
    sget v2, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->ALREADY_EXISTS:I

    if-ne p0, v2, :cond_2

    .line 99
    return-void

    .line 100
    :cond_2
    sget v2, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    if-ne p0, v2, :cond_3

    .line 101
    const/4 v0, 0x3

    .line 102
    const-string/jumbo v1, "Bad argument passed to camera service"

    .restart local v1    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 103
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_3
    sget v2, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->DEAD_OBJECT:I

    if-ne p0, v2, :cond_4

    .line 104
    const/4 v0, 0x4

    .line 105
    const-string/jumbo v1, "Camera service not available"

    .restart local v1    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 106
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_4
    sget v2, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->TIMED_OUT:I

    if-ne p0, v2, :cond_5

    .line 107
    const/16 v0, 0xa

    .line 108
    const-string/jumbo v1, "Operation timed out in camera service"

    .restart local v1    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 109
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_5
    sget v2, Landroid/system/OsConstants;->EACCES:I

    neg-int v2, v2

    if-ne p0, v2, :cond_6

    .line 110
    const/4 v0, 0x6

    .line 111
    const-string/jumbo v1, "Camera disabled by policy"

    .restart local v1    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 112
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_6
    sget v2, Landroid/system/OsConstants;->EBUSY:I

    neg-int v2, v2

    if-ne p0, v2, :cond_7

    .line 113
    const/4 v0, 0x7

    .line 114
    const-string/jumbo v1, "Camera already in use"

    .restart local v1    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 115
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_7
    sget v2, Landroid/system/OsConstants;->EUSERS:I

    neg-int v2, v2

    if-ne p0, v2, :cond_8

    .line 116
    const/16 v0, 0x8

    .line 117
    const-string/jumbo v1, "Maximum number of cameras in use"

    .restart local v1    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 118
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_8
    sget v2, Landroid/system/OsConstants;->ENODEV:I

    neg-int v2, v2

    if-ne p0, v2, :cond_9

    .line 119
    const/4 v0, 0x4

    .line 120
    const-string/jumbo v1, "Camera device not available"

    .restart local v1    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 121
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_9
    sget v2, Landroid/system/OsConstants;->EOPNOTSUPP:I

    neg-int v2, v2

    if-ne p0, v2, :cond_a

    .line 122
    const/16 v0, 0x9

    .line 123
    const-string/jumbo v1, "Deprecated camera HAL does not support this"

    .restart local v1    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 124
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_a
    sget v2, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->INVALID_OPERATION:I

    if-ne p0, v2, :cond_b

    .line 125
    const/16 v0, 0xa

    .line 126
    const-string/jumbo v1, "Illegal state encountered in camera service."

    .restart local v1    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 128
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_b
    const/16 v0, 0xa

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown camera device error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "errorMsg":Ljava/lang/String;
    goto :goto_0
.end method
