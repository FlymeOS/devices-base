.class Lcom/android/server/wifi/hotspot2/OMADMAdapter$1;
.super Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;
.source "OMADMAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/hotspot2/OMADMAdapter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hotspot2/OMADMAdapter;


# direct methods
.method varargs constructor <init>(Lcom/android/server/wifi/hotspot2/OMADMAdapter;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/hotspot2/OMADMAdapter;
    .param p2, "$anonymous0"    # [Ljava/lang/Object;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter$1;->this$0:Lcom/android/server/wifi/hotspot2/OMADMAdapter;

    invoke-direct {p0, p2}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;-><init>([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$1;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter$1;->this$0:Lcom/android/server/wifi/hotspot2/OMADMAdapter;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->getMAC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
