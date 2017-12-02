.class final Landroid/util/jar/StrictJarManifest$Chunk;
.super Ljava/lang/Object;
.source "StrictJarManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/jar/StrictJarManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Chunk"
.end annotation


# instance fields
.field final end:I

.field final start:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Landroid/util/jar/StrictJarManifest$Chunk;->start:I

    .line 56
    iput p2, p0, Landroid/util/jar/StrictJarManifest$Chunk;->end:I

    .line 54
    return-void
.end method
