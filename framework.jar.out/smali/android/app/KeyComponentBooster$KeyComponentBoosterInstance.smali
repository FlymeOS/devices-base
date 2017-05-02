.class final Landroid/app/KeyComponentBooster$KeyComponentBoosterInstance;
.super Ljava/lang/Object;
.source "KeyComponentBooster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/KeyComponentBooster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyComponentBoosterInstance"
.end annotation


# static fields
.field private static final instance:Landroid/app/KeyComponentBooster;


# direct methods
.method static synthetic -get0()Landroid/app/KeyComponentBooster;
    .locals 1

    sget-object v0, Landroid/app/KeyComponentBooster$KeyComponentBoosterInstance;->instance:Landroid/app/KeyComponentBooster;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/app/KeyComponentBooster;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/KeyComponentBooster;-><init>(Landroid/app/KeyComponentBooster;)V

    sput-object v0, Landroid/app/KeyComponentBooster$KeyComponentBoosterInstance;->instance:Landroid/app/KeyComponentBooster;

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
