.class Lcom/android/internal/telephony/CarrierSignalAgent$1;
.super Ljava/util/HashMap;
.source "CarrierSignalAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierSignalAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CarrierSignalAgent;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierSignalAgent;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/telephony/CarrierSignalAgent;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent$1;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 57
    const-string/jumbo v0, "android.intent.action.CARRIER_SIGNAL_REDIRECTED"

    .line 58
    const-string/jumbo v1, "signal_redirection_receiver_string_array"

    .line 57
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string/jumbo v0, "android.intent.action.CARRIER_SIGNAL_PCO_VALUE"

    .line 60
    const-string/jumbo v1, "signal_pco_receiver_string_array"

    .line 59
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string/jumbo v0, "android.intent.action.CARRIER_SIGNAL_REQUEST_NETWORK_FAILED"

    .line 62
    const-string/jumbo v1, "signal_dcfailure_receiver_string_array"

    .line 61
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method
