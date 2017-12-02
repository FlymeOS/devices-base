.class final Landroid/media/AudioManager$RecordConfigChangeCallbackData;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecordConfigChangeCallbackData"
.end annotation


# instance fields
.field final mCb:Landroid/media/AudioManager$AudioRecordingCallback;

.field final mConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/media/AudioManager$AudioRecordingCallback;Ljava/util/List;)V
    .locals 0
    .param p1, "cb"    # Landroid/media/AudioManager$AudioRecordingCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioManager$AudioRecordingCallback;",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2771
    .local p2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2773
    iput-object p1, p0, Landroid/media/AudioManager$RecordConfigChangeCallbackData;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    .line 2774
    iput-object p2, p0, Landroid/media/AudioManager$RecordConfigChangeCallbackData;->mConfigs:Ljava/util/List;

    .line 2772
    return-void
.end method
