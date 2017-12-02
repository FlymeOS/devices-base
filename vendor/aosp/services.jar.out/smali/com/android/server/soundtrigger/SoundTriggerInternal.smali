.class public abstract Lcom/android/server/soundtrigger/SoundTriggerInternal;
.super Ljava/lang/Object;
.source "SoundTriggerInternal.java"


# static fields
.field public static final STATUS_ERROR:I = -0x80000000

.field public static final STATUS_OK:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
.end method

.method public abstract startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
.end method

.method public abstract stopRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
.end method

.method public abstract unloadKeyphraseModel(I)I
.end method
