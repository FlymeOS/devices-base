.class public final Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;
.super Landroid/content/IntentFilter;
.source "EphemeralResolveInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/EphemeralResolveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EphemeralResolveIntentInfo"
.end annotation


# instance fields
.field private final mResolveInfo:Landroid/content/pm/EphemeralResolveInfo;


# direct methods
.method public constructor <init>(Landroid/content/IntentFilter;Landroid/content/pm/EphemeralResolveInfo;)V
    .locals 0
    .param p1, "orig"    # Landroid/content/IntentFilter;
    .param p2, "resolveInfo"    # Landroid/content/pm/EphemeralResolveInfo;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 113
    iput-object p2, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;->mResolveInfo:Landroid/content/pm/EphemeralResolveInfo;

    .line 111
    return-void
.end method


# virtual methods
.method public getEphemeralResolveInfo()Landroid/content/pm/EphemeralResolveInfo;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;->mResolveInfo:Landroid/content/pm/EphemeralResolveInfo;

    return-object v0
.end method
