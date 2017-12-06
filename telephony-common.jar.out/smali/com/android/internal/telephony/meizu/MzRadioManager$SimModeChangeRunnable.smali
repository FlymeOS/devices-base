.class Lcom/android/internal/telephony/meizu/MzRadioManager$SimModeChangeRunnable;
.super Ljava/lang/Object;
.source "MzRadioManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/meizu/MzRadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimModeChangeRunnable"
.end annotation


# instance fields
.field mPhoneId:I

.field mPower:Z

.field final synthetic this$0:Lcom/android/internal/telephony/meizu/MzRadioManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/meizu/MzRadioManager;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/meizu/MzRadioManager;
    .param p2, "power"    # Z
    .param p3, "phoneId"    # I

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/internal/telephony/meizu/MzRadioManager$SimModeChangeRunnable;->this$0:Lcom/android/internal/telephony/meizu/MzRadioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-boolean p2, p0, Lcom/android/internal/telephony/meizu/MzRadioManager$SimModeChangeRunnable;->mPower:Z

    .line 417
    iput p3, p0, Lcom/android/internal/telephony/meizu/MzRadioManager$SimModeChangeRunnable;->mPhoneId:I

    .line 415
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/meizu/MzRadioManager$SimModeChangeRunnable;->this$0:Lcom/android/internal/telephony/meizu/MzRadioManager;

    iget-boolean v1, p0, Lcom/android/internal/telephony/meizu/MzRadioManager$SimModeChangeRunnable;->mPower:Z

    iget v2, p0, Lcom/android/internal/telephony/meizu/MzRadioManager$SimModeChangeRunnable;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/meizu/MzRadioManager;->notifySimModeChange(ZI)V

    .line 420
    return-void
.end method
