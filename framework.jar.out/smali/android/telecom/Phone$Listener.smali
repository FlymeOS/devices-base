.class public abstract Landroid/telecom/Phone$Listener;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/AudioState;)V
    .locals 0
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "audioState"    # Landroid/telecom/AudioState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    return-void
.end method

.method public onBringToForeground(Landroid/telecom/Phone;Z)V
    .locals 0
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "showDialpad"    # Z

    .prologue
    .line 67
    return-void
.end method

.method public onCallAdded(Landroid/telecom/Phone;Landroid/telecom/Call;)V
    .locals 0
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "call"    # Landroid/telecom/Call;

    .prologue
    .line 79
    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/CallAudioState;)V
    .locals 0
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "callAudioState"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 57
    return-void
.end method

.method public onCallRemoved(Landroid/telecom/Phone;Landroid/telecom/Call;)V
    .locals 0
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "call"    # Landroid/telecom/Call;

    .prologue
    .line 90
    return-void
.end method

.method public onCanAddCallChanged(Landroid/telecom/Phone;Z)V
    .locals 0
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "canAddCall"    # Z

    .prologue
    .line 100
    return-void
.end method

.method public onSilenceRinger(Landroid/telecom/Phone;)V
    .locals 0
    .param p1, "phone"    # Landroid/telecom/Phone;

    .prologue
    .line 107
    return-void
.end method
