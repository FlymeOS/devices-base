.class Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;
.super Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;
.source "OMADMAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/OMADMAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConstPathAccessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;"
    }
.end annotation


# instance fields
.field private final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected varargs constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p2, "path"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;, "Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p2}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;-><init>([Ljava/lang/Object;)V

    .line 107
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;->mValue:Ljava/lang/Object;

    .line 105
    return-void
.end method


# virtual methods
.method protected getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;, "Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor<TT;>;"
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;->mValue:Ljava/lang/Object;

    return-object v0
.end method
