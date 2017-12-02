.class public final Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
.super Ljava/lang/Object;
.source "BluetoothAvrcpPlayerSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAvrcpPlayerSettings$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothAvrcpPlayerSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final SETTING_EQUALIZER:I = 0x1

.field public static final SETTING_REPEAT:I = 0x2

.field public static final SETTING_SCAN:I = 0x8

.field public static final SETTING_SHUFFLE:I = 0x4

.field public static final STATE_ALL_TRACK:I = 0x3

.field public static final STATE_GROUP:I = 0x4

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_OFF:I = 0x0

.field public static final STATE_ON:I = 0x1

.field public static final STATE_SINGLE_TRACK:I = 0x2

.field public static final TAG:Ljava/lang/String; = "BluetoothAvrcpPlayerSettings"


# instance fields
.field private mSettings:I

.field private mSettingsValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothAvrcpPlayerSettings$1;-><init>()V

    .line 119
    sput-object v0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "settings"    # I

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettingsValue:Ljava/util/Map;

    .line 144
    iput p1, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettings:I

    .line 143
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettingsValue:Ljava/util/Map;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettings:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 133
    .local v1, "numSettings":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 134
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettingsValue:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothAvrcpPlayerSettings;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addSettingValue(II)V
    .locals 3
    .param p1, "setting"    # I
    .param p2, "value"    # I

    .prologue
    .line 165
    iget v0, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettings:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 166
    const-string/jumbo v0, "BluetoothAvrcpPlayerSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettings:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettingsValue:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getSettingValue(I)I
    .locals 4
    .param p1, "setting"    # I

    .prologue
    .line 181
    iget v1, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettings:I

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    .line 182
    const-string/jumbo v1, "BluetoothAvrcpPlayerSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettings:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettingsValue:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 186
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_1

    const/4 v1, -0x1

    return v1

    .line 187
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getSettings()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettings:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 111
    iget v2, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettings:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettingsValue:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettingsValue:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "k$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 114
    .local v0, "k":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettingsValue:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 110
    .end local v0    # "k":I
    :cond_0
    return-void
.end method
