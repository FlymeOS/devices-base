.class public interface abstract Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;
.super Ljava/lang/Object;
.source "SupplicantBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/SupplicantBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SupplicantBridgeCallbacks"
.end annotation


# virtual methods
.method public abstract notifyANQPResponse(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyIconFailed(J)V
.end method
