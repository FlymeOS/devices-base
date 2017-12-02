.class final Landroid/app/ContextImpl$1;
.super Ljava/lang/Object;
.source "ContextImpl.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ContextImpl;->moveFiles(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$prefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "val$prefix"    # Ljava/lang/String;

    .prologue
    .line 397
    iput-object p1, p0, Landroid/app/ContextImpl$1;->val$prefix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 400
    iget-object v0, p0, Landroid/app/ContextImpl$1;->val$prefix:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
