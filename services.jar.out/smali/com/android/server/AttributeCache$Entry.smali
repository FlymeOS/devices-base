.class public final Lcom/android/server/AttributeCache$Entry;
.super Ljava/lang/Object;
.source "AttributeCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AttributeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public final array:Landroid/content/res/TypedArray;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ta"    # Landroid/content/res/TypedArray;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    .line 62
    return-void
.end method


# virtual methods
.method recycle()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    :cond_0
    return-void
.end method
