.class final Landroid/content/Intent$FlymeInjector;
.super Ljava/lang/Object;
.source "Intent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyIntent(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2
    .param p0, "dst"    # Landroid/content/Intent;
    .param p1, "src"    # Landroid/content/Intent;

    .prologue
    .line 9212
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v1, v1, Landroid/content/IntentExt;->mMeizuFlags:I

    iput v1, v0, Landroid/content/IntentExt;->mMeizuFlags:I

    .line 9213
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v1, v1, Landroid/content/IntentExt;->mAccessSrcFlags:I

    iput v1, v0, Landroid/content/IntentExt;->mAccessSrcFlags:I

    .line 9214
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, v1, Landroid/content/IntentExt;->mAccessPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessPackageName:Ljava/lang/String;

    .line 9215
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, v1, Landroid/content/IntentExt;->mAccessPackageLabel:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessPackageLabel:Ljava/lang/String;

    .line 9216
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, v1, Landroid/content/IntentExt;->mAccessSrcPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessSrcPackageName:Ljava/lang/String;

    .line 9217
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, v1, Landroid/content/IntentExt;->mAccessSrcClassName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessSrcClassName:Ljava/lang/String;

    .line 9211
    return-void
.end method

.method static copyMeizuFlag(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2
    .param p0, "dst"    # Landroid/content/Intent;
    .param p1, "src"    # Landroid/content/Intent;

    .prologue
    .line 9221
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v1, v1, Landroid/content/IntentExt;->mMeizuFlags:I

    iput v1, v0, Landroid/content/IntentExt;->mMeizuFlags:I

    .line 9220
    return-void
.end method

.method static createFlymeIntent(Landroid/content/Intent;)V
    .locals 1
    .param p0, "dst"    # Landroid/content/Intent;

    .prologue
    .line 9203
    new-instance v0, Landroid/content/IntentExt;

    invoke-direct {v0}, Landroid/content/IntentExt;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    .line 9202
    return-void
.end method

.method static createFlymeIntent(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0
    .param p0, "dst"    # Landroid/content/Intent;
    .param p1, "src"    # Landroid/content/Intent;

    .prologue
    .line 9207
    invoke-static {p0}, Landroid/content/Intent$FlymeInjector;->createFlymeIntent(Landroid/content/Intent;)V

    .line 9208
    invoke-static {p0, p1}, Landroid/content/Intent$FlymeInjector;->copyIntent(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 9206
    return-void
.end method

.method static readIntentExt(Landroid/content/Intent;Landroid/os/Parcel;)V
    .locals 2
    .param p0, "dst"    # Landroid/content/Intent;
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 9234
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/content/IntentExt;->mMeizuFlags:I

    .line 9235
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/content/IntentExt;->mAccessSrcFlags:I

    .line 9236
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessPackageName:Ljava/lang/String;

    .line 9237
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessPackageLabel:Ljava/lang/String;

    .line 9238
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessSrcPackageName:Ljava/lang/String;

    .line 9239
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessSrcClassName:Ljava/lang/String;

    .line 9233
    return-void
.end method

.method static writeIntentExt(Landroid/content/Intent;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "dst"    # Landroid/content/Intent;
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 9225
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v0, v0, Landroid/content/IntentExt;->mMeizuFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9226
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v0, v0, Landroid/content/IntentExt;->mAccessSrcFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9227
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v0, v0, Landroid/content/IntentExt;->mAccessPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9228
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v0, v0, Landroid/content/IntentExt;->mAccessPackageLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9229
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v0, v0, Landroid/content/IntentExt;->mAccessSrcPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9230
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v0, v0, Landroid/content/IntentExt;->mAccessSrcClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9224
    return-void
.end method
