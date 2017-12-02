.class public Lcom/android/server/soundtrigger/SoundTriggerHelper;
.super Ljava/lang/Object;
.source "SoundTriggerHelper.java"

# interfaces
.implements Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;,
        Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;,
        Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final INVALID_VALUE:I = -0x80000000

.field public static final STATUS_ERROR:I = -0x80000000

.field public static final STATUS_OK:I = 0x0

.field static final TAG:Ljava/lang/String; = "SoundTriggerHelper"


# instance fields
.field private mCallActive:Z

.field private final mContext:Landroid/content/Context;

.field private mIsPowerSaveMode:Z

.field private mKeyphraseUuidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mModelDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/UUID;",
            "Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;",
            ">;"
        }
    .end annotation
.end field

.field private mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

.field final mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

.field private mRecognitionRunning:Z

.field private mServiceDisabled:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/soundtrigger/SoundTriggerHelper;Z)V
    .locals 0
    .param p1, "callActive"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onCallStateChangedLocked(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/soundtrigger/SoundTriggerHelper;Z)V
    .locals 0
    .param p1, "isPowerSaveMode"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onPowerSaveModeChangedLocked(Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 97
    iput-boolean v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    .line 98
    iput-boolean v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    .line 101
    iput-boolean v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mServiceDisabled:Z

    .line 104
    iput-boolean v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v0, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;>;"
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->listModules(Ljava/util/ArrayList;)I

    move-result v1

    .line 111
    .local v1, "status":I
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 112
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 113
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    .line 114
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 115
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    .line 116
    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;

    invoke-direct {v2, p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;-><init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V

    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 117
    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 118
    :cond_0
    const-string/jumbo v2, "SoundTriggerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "listModules status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", # of modules="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iput-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 120
    iput-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 108
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    goto :goto_0
.end method

.method private cleanUpExistingKeyphraseModel(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)I
    .locals 4
    .param p1, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .prologue
    const/4 v1, 0x1

    .line 214
    invoke-direct {p0, p1, v1, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->tryStopAndUnloadLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    move-result v0

    .line 215
    .local v0, "status":I
    if-eqz v0, :cond_0

    .line 216
    const-string/jumbo v1, "SoundTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to stop or unload previous model: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 217
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->toString()Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    return v0
.end method

.method private computeRecognitionRunningLocked()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1047
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v2, :cond_1

    .line 1048
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    .line 1049
    iget-boolean v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    return v2

    .line 1051
    :cond_1
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "modelData$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1052
    .local v0, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1053
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    .line 1054
    iget-boolean v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    return v2

    .line 1057
    .end local v0    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    .line 1058
    iget-boolean v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    return v2
.end method

.method private createKeyphraseModelDataLocked(Ljava/util/UUID;I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .locals 3
    .param p1, "modelId"    # Ljava/util/UUID;
    .param p2, "keyphraseId"    # I

    .prologue
    .line 922
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->createKeyphraseModelData(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v0

    .line 926
    .local v0, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    return-object v0
.end method

.method private dumpModelStateLocked()V
    .locals 6

    .prologue
    .line 1038
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "modelId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 1039
    .local v1, "modelId":Ljava/util/UUID;
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1040
    .local v0, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    const-string/jumbo v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Model :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1037
    .end local v0    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .end local v1    # "modelId":Ljava/util/UUID;
    :cond_0
    return-void
.end method

.method private getKeyphraseIdFromEvent(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)I
    .locals 4
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .prologue
    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    .line 723
    if-nez p1, :cond_0

    .line 724
    const-string/jumbo v1, "SoundTriggerHelper"

    const-string/jumbo v2, "Null RecognitionEvent received."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    return v3

    .line 727
    :cond_0
    iget-object v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 729
    .local v0, "keyphraseExtras":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_2

    .line 730
    :cond_1
    const-string/jumbo v1, "SoundTriggerHelper"

    const-string/jumbo v2, "Invalid keyphrase recognition event!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    return v3

    .line 734
    :cond_2
    aget-object v1, v0, v2

    iget v1, v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    return v1
.end method

.method private getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .locals 4
    .param p1, "keyphraseId"    # I

    .prologue
    const/4 v3, 0x0

    .line 912
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 913
    .local v0, "uuid":Ljava/util/UUID;
    if-nez v0, :cond_0

    .line 914
    return-object v3

    .line 916
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    return-object v1
.end method

.method private getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .locals 3
    .param p1, "modelHandle"    # I

    .prologue
    .line 935
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "model$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 936
    .local v0, "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 937
    return-object v0

    .line 940
    .end local v0    # "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getOrCreateGenericModelDataLocked(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .locals 4
    .param p1, "modelId"    # Ljava/util/UUID;

    .prologue
    const/4 v3, 0x0

    .line 891
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 892
    .local v0, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-nez v0, :cond_1

    .line 893
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->createGenericModelData(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v0

    .line 894
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    :cond_0
    return-object v0

    .line 895
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result v1

    if-nez v1, :cond_0

    .line 896
    const-string/jumbo v1, "SoundTriggerHelper"

    const-string/jumbo v2, "UUID already used for non-generic model."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    return-object v3
.end method

.method private initializeTelephonyAndPowerStateListeners()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 865
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    .line 868
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 872
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    if-nez v0, :cond_1

    .line 873
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;-><init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    .line 874
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    .line 875
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 874
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 877
    :cond_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    .line 863
    return-void
.end method

.method private internalClearGlobalStateLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 812
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 815
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 817
    iput-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    .line 810
    :cond_0
    return-void
.end method

.method private internalClearModelStateLocked()V
    .locals 3

    .prologue
    .line 823
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "modelData$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 824
    .local v0, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearState()V

    goto :goto_0

    .line 822
    .end local v0    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_0
    return-void
.end method

.method private isKeyphraseRecognitionEvent(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    .prologue
    .line 591
    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    return v0
.end method

.method private isRecognitionAllowed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 947
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mServiceDisabled:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onCallStateChangedLocked(Z)V
    .locals 1
    .param p1, "callActive"    # Z

    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    if-ne v0, p1, :cond_0

    .line 669
    return-void

    .line 671
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    .line 672
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateAllRecognitionsLocked(Z)V

    .line 665
    return-void
.end method

.method private onGenericRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    .prologue
    const/4 v6, 0x1

    .line 595
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "sth_generic_recognition_event"

    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 596
    iget v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->status:I

    if-eqz v4, :cond_0

    .line 597
    return-void

    .line 599
    :cond_0
    iget v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    invoke-direct {p0, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v3

    .line 600
    .local v3, "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 606
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v0

    .line 607
    .local v0, "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    if-nez v0, :cond_2

    .line 608
    const-string/jumbo v4, "SoundTriggerHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Generic recognition event: Null callback for model handle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 609
    iget v6, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    .line 608
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    return-void

    .line 601
    .end local v0    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :cond_1
    const-string/jumbo v4, "SoundTriggerHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Generic recognition event: Model does not exist for handle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 602
    iget v6, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    .line 601
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return-void

    .line 614
    .restart local v0    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :cond_2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 620
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object v1

    .line 621
    .local v1, "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    if-nez v1, :cond_3

    .line 622
    const-string/jumbo v4, "SoundTriggerHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Generic recognition event: Null RecognitionConfig for model handle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 623
    iget v6, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    .line 622
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-void

    .line 615
    .end local v1    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :catch_0
    move-exception v2

    .line 616
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "SoundTriggerHelper"

    const-string/jumbo v5, "RemoteException in onGenericSoundTriggerDetected"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 627
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :cond_3
    iget-boolean v4, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 629
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 630
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    move-result v4

    invoke-direct {p0, v3, v4, v6}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    .line 594
    :cond_4
    return-void
.end method

.method private onKeyphraseRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .prologue
    const/4 v6, 0x1

    .line 738
    const-string/jumbo v4, "SoundTriggerHelper"

    const-string/jumbo v5, "Recognition success"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "sth_keyphrase_recognition_event"

    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 740
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseIdFromEvent(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)I

    move-result v2

    .line 741
    .local v2, "keyphraseId":I
    invoke-direct {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v3

    .line 743
    .local v3, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 748
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v4

    if-nez v4, :cond_1

    .line 749
    const-string/jumbo v4, "SoundTriggerHelper"

    const-string/jumbo v5, "Received onRecognition event without callback for keyphrase model."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-void

    .line 744
    :cond_0
    const-string/jumbo v4, "SoundTriggerHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Keyphase model data does not exist for ID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    return-void

    .line 754
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 761
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object v0

    .line 762
    .local v0, "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    if-eqz v0, :cond_2

    .line 764
    iget-boolean v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 767
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 768
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    move-result v4

    invoke-direct {p0, v3, v4, v6}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    .line 737
    :cond_3
    return-void

    .line 755
    .end local v0    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :catch_0
    move-exception v1

    .line 756
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "SoundTriggerHelper"

    const-string/jumbo v5, "RemoteException in onKeyphraseDetected"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onPowerSaveModeChangedLocked(Z)V
    .locals 1
    .param p1, "isPowerSaveMode"    # Z

    .prologue
    .line 676
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    if-ne v0, p1, :cond_0

    .line 677
    return-void

    .line 679
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    .line 680
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateAllRecognitionsLocked(Z)V

    .line 675
    return-void
.end method

.method private onRecognitionAbortLocked(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    .prologue
    .line 696
    const-string/jumbo v2, "SoundTriggerHelper"

    const-string/jumbo v3, "Recognition aborted"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "sth_recognition_aborted"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 698
    iget v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    invoke-direct {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v1

    .line 699
    .local v1, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 700
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 702
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionPaused()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SoundTriggerHelper"

    const-string/jumbo v3, "RemoteException in onRecognitionPaused"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onRecognitionFailureLocked()V
    .locals 4

    .prologue
    .line 710
    const-string/jumbo v1, "SoundTriggerHelper"

    const-string/jumbo v2, "Recognition failure"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_recognition_failure_event"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 713
    const/high16 v1, -0x80000000

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->sendErrorCallbacksToAll(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    .line 718
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    .line 709
    :goto_0
    return-void

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "SoundTriggerHelper"

    const-string/jumbo v2, "RemoteException in onError"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    .line 718
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    goto :goto_0

    .line 716
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 717
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    .line 718
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    .line 716
    throw v1
.end method

.method private onServiceDiedLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 795
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_service_died"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 796
    sget v1, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_DEAD_OBJECT:I

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->sendErrorCallbacksToAll(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    .line 801
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    .line 802
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v1, :cond_0

    .line 803
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 804
    :goto_0
    iput-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 793
    :cond_0
    return-void

    .line 797
    :catch_0
    move-exception v0

    .line 798
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "SoundTriggerHelper"

    const-string/jumbo v2, "RemoteException in onError"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 800
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    .line 801
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    .line 802
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v1, :cond_0

    .line 803
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    goto :goto_0

    .line 799
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 800
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    .line 801
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    .line 802
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v2, :cond_1

    .line 803
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 804
    iput-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 799
    :cond_1
    throw v1
.end method

.method private onServiceStateChangedLocked(Z)V
    .locals 1
    .param p1, "disabled"    # Z

    .prologue
    .line 688
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mServiceDisabled:Z

    if-ne p1, v0, :cond_0

    .line 689
    return-void

    .line 691
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mServiceDisabled:Z

    .line 692
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateAllRecognitionsLocked(Z)V

    .line 687
    return-void
.end method

.method private onSoundModelUpdatedLocked(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    .prologue
    .line 683
    return-void
.end method

.method private removeKeyphraseModelLocked(I)V
    .locals 3
    .param p1, "keyphraseId"    # I

    .prologue
    .line 903
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 904
    .local v0, "uuid":Ljava/util/UUID;
    if-nez v0, :cond_0

    .line 905
    return-void

    .line 907
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    return-void
.end method

.method private sendErrorCallbacksToAll(I)V
    .locals 4
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 882
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "modelData$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 883
    .local v1, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v0

    .line 884
    .local v0, "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    if-eqz v0, :cond_0

    .line 885
    const/high16 v3, -0x80000000

    invoke-interface {v0, v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V

    goto :goto_0

    .line 881
    .end local v0    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v1    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_1
    return-void
.end method

.method private startRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I
    .locals 10
    .param p1, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p2, "notify"    # Z

    .prologue
    const/4 v9, 0x0

    const/high16 v7, -0x80000000

    const/4 v8, 0x1

    .line 953
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v0

    .line 954
    .local v0, "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v3

    .line 955
    .local v3, "handle":I
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object v1

    .line 956
    .local v1, "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    if-eqz v0, :cond_0

    if-ne v3, v7, :cond_1

    .line 958
    :cond_0
    const-string/jumbo v5, "SoundTriggerHelper"

    const-string/jumbo v6, "startRecognition: Bad data passed in."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "sth_start_recognition_error"

    invoke-static {v5, v6, v8}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 960
    return v7

    .line 956
    :cond_1
    if-eqz v1, :cond_0

    .line 963
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 965
    const-string/jumbo v5, "SoundTriggerHelper"

    const-string/jumbo v6, "startRecognition requested but not allowed."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "sth_start_recognition_not_allowed"

    invoke-static {v5, v6, v8}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 967
    return v9

    .line 970
    :cond_2
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v5, v3, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v4

    .line 971
    .local v4, "status":I
    if-eqz v4, :cond_4

    .line 972
    const-string/jumbo v5, "SoundTriggerHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startRecognition failed with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "sth_start_recognition_error"

    invoke-static {v5, v6, v8}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 975
    if-eqz p2, :cond_3

    .line 977
    :try_start_0
    invoke-interface {v0, v4}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 998
    :cond_3
    :goto_0
    return v4

    .line 978
    :catch_0
    move-exception v2

    .line 979
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SoundTriggerHelper"

    const-string/jumbo v6, "RemoteException in onError"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 983
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string/jumbo v5, "SoundTriggerHelper"

    const-string/jumbo v6, "startRecognition successful."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "sth_start_recognition_success"

    invoke-static {v5, v6, v8}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 985
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStarted()V

    .line 987
    if-eqz p2, :cond_3

    .line 989
    :try_start_1
    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionResumed()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 990
    :catch_1
    move-exception v2

    .line 991
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SoundTriggerHelper"

    const-string/jumbo v6, "RemoteException in onRecognitionResumed"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private stopRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 6
    .param p1, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p2, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .prologue
    const/high16 v5, -0x80000000

    .line 407
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 408
    if-nez p2, :cond_0

    monitor-exit v3

    .line 409
    return v5

    .line 411
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v2, :cond_2

    .line 412
    :cond_1
    const-string/jumbo v2, "SoundTriggerHelper"

    const-string/jumbo v4, "Attempting stopRecognition without the capability"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 413
    return v5

    .line 416
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v0

    .line 417
    .local v0, "currentCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    if-eqz p1, :cond_3

    if-nez v0, :cond_4

    .line 420
    :cond_3
    const-string/jumbo v2, "SoundTriggerHelper"

    const-string/jumbo v4, "Attempting stopRecognition without a successful startRecognition"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 421
    return v5

    .line 418
    :cond_4
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 424
    :cond_5
    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-eq v2, v4, :cond_6

    .line 427
    const-string/jumbo v2, "SoundTriggerHelper"

    const-string/jumbo v4, "Attempting stopRecognition for another recognition"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 428
    return v5

    .line 432
    :cond_6
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 433
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    move-result v2

    .line 434
    const/4 v4, 0x0

    .line 433
    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    .line 435
    .local v1, "status":I
    if-eqz v1, :cond_7

    monitor-exit v3

    .line 436
    return v1

    .line 441
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setLoaded()V

    .line 442
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearCallback()V

    .line 443
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V

    .line 445
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->computeRecognitionRunningLocked()Z

    move-result v2

    if-nez v2, :cond_8

    .line 446
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    monitor-exit v3

    .line 449
    return v1

    .line 407
    .end local v0    # "currentCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v1    # "status":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I
    .locals 7
    .param p1, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p2, "notify"    # Z

    .prologue
    const/4 v6, 0x1

    .line 1002
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v0

    .line 1005
    .local v0, "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    const/4 v2, 0x0

    .line 1007
    .local v2, "status":I
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/hardware/soundtrigger/SoundTriggerModule;->stopRecognition(I)I

    move-result v2

    .line 1009
    if-eqz v2, :cond_1

    .line 1010
    const-string/jumbo v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopRecognition call failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "sth_stop_recognition_error"

    invoke-static {v3, v4, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1012
    if-eqz p2, :cond_0

    .line 1014
    :try_start_0
    invoke-interface {v0, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    :cond_0
    :goto_0
    return v2

    .line 1015
    :catch_0
    move-exception v1

    .line 1016
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SoundTriggerHelper"

    const-string/jumbo v4, "RemoteException in onError"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1020
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 1021
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "sth_stop_recognition_success"

    invoke-static {v3, v4, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1023
    if-eqz p2, :cond_0

    .line 1025
    :try_start_1
    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionPaused()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1026
    :catch_1
    move-exception v1

    .line 1027
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SoundTriggerHelper"

    const-string/jumbo v4, "RemoteException in onRecognitionPaused"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private tryStopAndUnloadLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I
    .locals 4
    .param p1, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p2, "stopModel"    # Z
    .param p3, "unloadModel"    # Z

    .prologue
    const/4 v2, 0x0

    .line 458
    const/4 v0, 0x0

    .line 459
    .local v0, "status":I
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelNotLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    return v0

    .line 462
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 463
    invoke-direct {p0, p1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result v0

    .line 465
    if-eqz v0, :cond_1

    .line 466
    const-string/jumbo v1, "SoundTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopRecognition failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return v0

    .line 471
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 472
    const-string/jumbo v1, "SoundTriggerHelper"

    const-string/jumbo v2, "Unloading previously loaded stale model."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v0

    .line 474
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_unloading_stale_model"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 475
    if-eqz v0, :cond_3

    .line 476
    const-string/jumbo v1, "SoundTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unloadSoundModel call failed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_2
    :goto_0
    return v0

    .line 479
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearState()V

    goto :goto_0
.end method

.method private updateAllRecognitionsLocked(Z)V
    .locals 4
    .param p1, "notify"    # Z

    .prologue
    .line 773
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    move-result v0

    .line 774
    .local v0, "isAllowed":Z
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "modelData$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 775
    .local v1, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    goto :goto_0

    .line 772
    .end local v1    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_0
    return-void
.end method

.method private updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I
    .locals 2
    .param p1, "model"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p2, "isAllowed"    # Z
    .param p3, "notify"    # Z

    .prologue
    .line 781
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, p2

    .line 782
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 784
    const/4 v1, 0x0

    return v1

    .line 781
    :cond_0
    const/4 v0, 0x0

    .local v0, "start":Z
    goto :goto_0

    .line 786
    .end local v0    # "start":Z
    :cond_1
    if-eqz v0, :cond_2

    .line 787
    invoke-direct {p0, p1, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result v1

    return v1

    .line 789
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result v1

    return v1
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 853
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 854
    :try_start_0
    const-string/jumbo v0, "  module properties="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 855
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 857
    const-string/jumbo v0, "  call active="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 858
    const-string/jumbo v0, "  power save mode active="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 859
    const-string/jumbo v0, "  service disabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mServiceDisabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 852
    return-void

    .line 855
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 853
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    return-object v0
.end method

.method public onRecognition(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    .prologue
    .line 558
    if-nez p1, :cond_0

    .line 559
    const-string/jumbo v0, "SoundTriggerHelper"

    const-string/jumbo v1, "Null recognition event!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return-void

    .line 563
    :cond_0
    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    if-nez v0, :cond_1

    .line 564
    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    if-eqz v0, :cond_2

    .line 570
    :cond_1
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 571
    :try_start_0
    iget v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .end local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :goto_0
    monitor-exit v1

    .line 557
    return-void

    .line 565
    .restart local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :cond_2
    const-string/jumbo v0, "SoundTriggerHelper"

    const-string/jumbo v1, "Invalid recognition event type (not one of generic or keyphrase)!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return-void

    .line 573
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onRecognitionAbortLocked(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 570
    .end local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 577
    .restart local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :pswitch_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onRecognitionFailureLocked()V

    goto :goto_0

    .line 580
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isKeyphraseRecognitionEvent(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 581
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .end local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onKeyphraseRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V

    goto :goto_0

    .line 583
    .restart local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :cond_3
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    .end local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onGenericRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 571
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onServiceDied()V
    .locals 3

    .prologue
    .line 658
    const-string/jumbo v0, "SoundTriggerHelper"

    const-string/jumbo v1, "onServiceDied!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_service_died"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 660
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 661
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onServiceDiedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 657
    return-void

    .line 660
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onServiceStateChange(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 651
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 652
    if-ne v0, p1, :cond_0

    :goto_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onServiceStateChangedLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 649
    return-void

    .line 652
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 651
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onSoundModelUpdate(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    .prologue
    .line 637
    if-nez p1, :cond_0

    .line 638
    const-string/jumbo v0, "SoundTriggerHelper"

    const-string/jumbo v1, "Invalid sound model event!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return-void

    .line 642
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 643
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_sound_model_updated"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 644
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onSoundModelUpdatedLocked(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 636
    return-void

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .locals 7
    .param p1, "modelId"    # Ljava/util/UUID;
    .param p2, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .param p3, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p4, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .prologue
    const/high16 v4, -0x80000000

    .line 140
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_start_recognition"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 141
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 143
    :cond_0
    const-string/jumbo v0, "SoundTriggerHelper"

    const-string/jumbo v1, "Passed in bad data to startGenericRecognition()."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return v4

    .line 141
    :cond_1
    if-eqz p3, :cond_0

    .line 142
    if-eqz p4, :cond_0

    .line 147
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 148
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getOrCreateGenericModelDataLocked(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v2

    .line 149
    .local v2, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-nez v2, :cond_2

    .line 150
    const-string/jumbo v0, "SoundTriggerHelper"

    const-string/jumbo v1, "Irrecoverable error occurred, check UUID / sound model data."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 151
    return v4

    .line 154
    :cond_2
    const/high16 v5, -0x80000000

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    .line 153
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v6

    return v0

    .line 147
    .end local v2    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method startKeyphraseRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .locals 8
    .param p1, "keyphraseId"    # I
    .param p2, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .param p3, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p4, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .prologue
    const/high16 v4, -0x80000000

    .line 169
    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_start_recognition"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    monitor-exit v7

    .line 172
    return v4

    .line 171
    :cond_1
    if-eqz p4, :cond_0

    .line 183
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v2

    .line 184
    .local v2, "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 190
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 202
    .end local v2    # "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_3
    :goto_0
    if-nez v2, :cond_4

    .line 203
    iget-object v0, p2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-direct {p0, v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->createKeyphraseModelDataLocked(Ljava/util/UUID;I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v2

    :cond_4
    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p1

    .line 206
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v7

    return v0

    .line 185
    .restart local v2    # "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_5
    :try_start_2
    const-string/jumbo v0, "SoundTriggerHelper"

    const-string/jumbo v1, "Generic model with same UUID exists."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    .line 186
    return v4

    .line 192
    :cond_6
    :try_start_3
    invoke-direct {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->cleanUpExistingKeyphraseModel(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    .line 193
    .local v6, "status":I
    if-eqz v6, :cond_7

    monitor-exit v7

    .line 194
    return v6

    .line 196
    :cond_7
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->removeKeyphraseModelLocked(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 197
    const/4 v2, 0x0

    .local v2, "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    goto :goto_0

    .line 169
    .end local v2    # "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .end local v6    # "status":I
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;I)I
    .locals 10
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .param p2, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p3, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p4, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .param p5, "keyphraseId"    # I

    .prologue
    .line 238
    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 239
    :try_start_0
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-nez v6, :cond_0

    .line 240
    const-string/jumbo v6, "SoundTriggerHelper"

    const-string/jumbo v8, "Attempting startRecognition without the capability"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    const/high16 v6, -0x80000000

    monitor-exit v7

    return v6

    .line 243
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v6, :cond_1

    .line 244
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    iget v6, v6, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->id:I

    const/4 v8, 0x0

    invoke-static {v6, p0, v8}, Landroid/hardware/soundtrigger/SoundTrigger;->attachModule(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)Landroid/hardware/soundtrigger/SoundTriggerModule;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 245
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v6, :cond_1

    .line 246
    const-string/jumbo v6, "SoundTriggerHelper"

    const-string/jumbo v8, "startRecognition cannot attach to sound trigger module"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    const/high16 v6, -0x80000000

    monitor-exit v7

    return v6

    .line 252
    :cond_1
    :try_start_2
    iget-boolean v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    if-nez v6, :cond_2

    .line 253
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->initializeTelephonyAndPowerStateListeners()V

    .line 263
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 264
    const/4 v4, 0x0

    .line 265
    .local v4, "stopModel":Z
    const/4 v5, 0x0

    .line 266
    .local v5, "unloadModel":Z
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 269
    const/4 v4, 0x1

    .line 270
    const/4 v5, 0x0

    .line 277
    .end local v4    # "stopModel":Z
    .end local v5    # "unloadModel":Z
    :cond_3
    :goto_0
    if-nez v4, :cond_4

    if-eqz v5, :cond_6

    .line 278
    :cond_4
    invoke-direct {p0, p2, v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->tryStopAndUnloadLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    move-result v3

    .line 279
    .local v3, "status":I
    if-eqz v3, :cond_6

    .line 280
    const-string/jumbo v6, "SoundTriggerHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to stop or unload previous model: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 281
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->toString()Ljava/lang/String;

    move-result-object v9

    .line 280
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    .line 282
    return v3

    .line 271
    .end local v3    # "status":I
    .restart local v4    # "stopModel":Z
    .restart local v5    # "unloadModel":Z
    :cond_5
    :try_start_3
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 274
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v4

    .line 275
    .local v4, "stopModel":Z
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v5

    .local v5, "unloadModel":Z
    goto :goto_0

    .line 287
    .end local v4    # "stopModel":Z
    .end local v5    # "unloadModel":Z
    :cond_6
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    .line 288
    .local v2, "oldCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    if-eq v6, v8, :cond_7

    .line 289
    const-string/jumbo v6, "SoundTriggerHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Canceling previous recognition for model id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 290
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v9

    .line 289
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 292
    const/high16 v6, -0x80000000

    :try_start_4
    invoke-interface {v2, v6}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 296
    :goto_1
    :try_start_5
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearCallback()V

    .line 300
    :cond_7
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v6

    if-nez v6, :cond_a

    .line 302
    const/4 v6, 0x1

    new-array v1, v6, [I

    const/high16 v6, -0x80000000

    const/4 v8, 0x0

    aput v6, v1, v8

    .line 303
    .local v1, "handle":[I
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v6, p1, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;[I)I

    move-result v3

    .line 304
    .restart local v3    # "status":I
    if-eqz v3, :cond_8

    .line 305
    const-string/jumbo v6, "SoundTriggerHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadSoundModel call failed with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v7

    .line 306
    return v3

    .line 293
    .end local v1    # "handle":[I
    .end local v3    # "status":I
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string/jumbo v6, "SoundTriggerHelper"

    const-string/jumbo v8, "RemoteException in onDetectionStopped"

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 238
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "oldCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 308
    .restart local v1    # "handle":[I
    .restart local v2    # "oldCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .restart local v3    # "status":I
    :cond_8
    const/4 v6, 0x0

    :try_start_7
    aget v6, v1, v6

    const/high16 v8, -0x80000000

    if-ne v6, v8, :cond_9

    .line 309
    const-string/jumbo v6, "SoundTriggerHelper"

    const-string/jumbo v8, "loadSoundModel call returned invalid sound model handle"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 310
    const/high16 v6, -0x80000000

    monitor-exit v7

    return v6

    .line 312
    :cond_9
    const/4 v6, 0x0

    :try_start_8
    aget v6, v1, v6

    invoke-virtual {p2, v6}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setHandle(I)V

    .line 313
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setLoaded()V

    .line 314
    const-string/jumbo v6, "SoundTriggerHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Sound model loaded with handle:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v1, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .end local v1    # "handle":[I
    .end local v3    # "status":I
    :cond_a
    invoke-virtual {p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setCallback(Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)V

    .line 317
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 318
    invoke-virtual {p2, p4}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V

    .line 319
    invoke-virtual {p2, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)V

    .line 322
    const/4 v6, 0x0

    .line 321
    invoke-direct {p0, p2, v6}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v6

    monitor-exit v7

    return v6
.end method

.method stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 7
    .param p1, "modelId"    # Ljava/util/UUID;
    .param p2, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .prologue
    const/high16 v6, -0x80000000

    .line 337
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 338
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "sth_stop_recognition"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 339
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 340
    :cond_0
    const-string/jumbo v2, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Null callbackreceived for stopGenericRecognition() for modelid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 342
    return v6

    .line 345
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 346
    .local v0, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 351
    invoke-direct {p0, v0, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v1

    .line 352
    .local v1, "status":I
    if-eqz v1, :cond_2

    .line 353
    const-string/jumbo v2, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopGenericRecognition failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v3

    .line 355
    return v1

    .line 347
    .end local v1    # "status":I
    :cond_3
    :try_start_2
    const-string/jumbo v2, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attempting stopRecognition on invalid model with id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 348
    return v6

    .line 337
    .end local v0    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method stopKeyphraseRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 7
    .param p1, "keyphraseId"    # I
    .param p2, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .prologue
    const/high16 v6, -0x80000000

    .line 370
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 371
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "sth_stop_recognition"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 372
    if-nez p2, :cond_0

    .line 373
    const-string/jumbo v2, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Null callback received for stopKeyphraseRecognition() for keyphraseId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 375
    return v6

    .line 378
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v0

    .line 379
    .local v0, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 390
    invoke-direct {p0, v0, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 391
    .local v1, "status":I
    if-eqz v1, :cond_2

    monitor-exit v3

    .line 392
    return v1

    .line 380
    .end local v1    # "status":I
    :cond_1
    :try_start_2
    const-string/jumbo v2, "SoundTriggerHelper"

    const-string/jumbo v4, "No model exists for given keyphrase Id."

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 381
    return v6

    .restart local v1    # "status":I
    :cond_2
    monitor-exit v3

    .line 395
    return v1

    .line 370
    .end local v0    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .end local v1    # "status":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method unloadGenericSoundModel(Ljava/util/UUID;)I
    .locals 8
    .param p1, "modelId"    # Ljava/util/UUID;

    .prologue
    const/high16 v7, -0x80000000

    const/4 v6, 0x0

    .line 518
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 519
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "sth_unload_generic_sound_model"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 520
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    monitor-exit v3

    .line 521
    return v7

    .line 523
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 524
    .local v0, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 529
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v2

    if-nez v2, :cond_3

    .line 531
    const-string/jumbo v2, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unload: Given generic model is not loaded:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 532
    return v6

    .line 525
    :cond_2
    :try_start_2
    const-string/jumbo v2, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unload error: Attempting unload invalid generic model with id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 527
    return v7

    .line 534
    :cond_3
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 536
    const/4 v2, 0x0

    .line 535
    invoke-direct {p0, v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result v1

    .line 537
    .local v1, "status":I
    if-eqz v1, :cond_4

    .line 538
    const-string/jumbo v2, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopGenericRecognition failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    .end local v1    # "status":I
    :cond_4
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v1

    .line 543
    .restart local v1    # "status":I
    if-eqz v1, :cond_5

    .line 544
    const-string/jumbo v2, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unloadGenericSoundModel() call failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const-string/jumbo v2, "SoundTriggerHelper"

    const-string/jumbo v4, "unloadGenericSoundModel() force-marking model as unloaded."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_5
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    .line 551
    return v1

    .line 518
    .end local v0    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .end local v1    # "status":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method unloadKeyphraseSoundModel(I)I
    .locals 7
    .param p1, "keyphraseId"    # I

    .prologue
    const/high16 v6, -0x80000000

    .line 490
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 491
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "sth_unload_keyphrase_sound_model"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 492
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v0

    .line 493
    .local v0, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v3

    .line 495
    return v6

    .line 493
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 494
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 499
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 500
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    move-result v2

    .line 501
    const/4 v4, 0x0

    .line 500
    invoke-direct {p0, v0, v2, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    move-result v1

    .line 502
    .local v1, "status":I
    if-eqz v1, :cond_2

    .line 503
    const-string/jumbo v2, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Stop recognition failed for keyphrase ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_2
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v1

    .line 507
    if-eqz v1, :cond_3

    .line 508
    const-string/jumbo v2, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unloadKeyphraseSoundModel call failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->removeKeyphraseModelLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 513
    return v1

    .line 490
    .end local v0    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .end local v1    # "status":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
