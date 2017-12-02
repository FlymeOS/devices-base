.class Lcom/android/server/webkit/SystemImpl$LazyHolder;
.super Ljava/lang/Object;
.source "SystemImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/webkit/SystemImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/webkit/SystemImpl;


# direct methods
.method static synthetic -get0()Lcom/android/server/webkit/SystemImpl;
    .locals 1

    sget-object v0, Lcom/android/server/webkit/SystemImpl$LazyHolder;->INSTANCE:Lcom/android/server/webkit/SystemImpl;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/android/server/webkit/SystemImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/webkit/SystemImpl;-><init>(Lcom/android/server/webkit/SystemImpl;)V

    sput-object v0, Lcom/android/server/webkit/SystemImpl$LazyHolder;->INSTANCE:Lcom/android/server/webkit/SystemImpl;

    .line 66
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
