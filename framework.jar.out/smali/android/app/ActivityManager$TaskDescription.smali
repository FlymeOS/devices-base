.class public Landroid/app/ActivityManager$TaskDescription;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$TaskDescription$1;
    }
.end annotation


# static fields
.field private static final ATTR_TASKDESCRIPTIONCOLOR_BACKGROUND:Ljava/lang/String; = "task_description_colorBackground"

.field private static final ATTR_TASKDESCRIPTIONCOLOR_PRIMARY:Ljava/lang/String; = "task_description_color"

.field private static final ATTR_TASKDESCRIPTIONICONFILENAME:Ljava/lang/String; = "task_description_icon_filename"

.field private static final ATTR_TASKDESCRIPTIONLABEL:Ljava/lang/String; = "task_description_label"

.field public static final ATTR_TASKDESCRIPTION_PREFIX:Ljava/lang/String; = "task_description_"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mColorBackground:I

.field private mColorPrimary:I

.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconFilename:Ljava/lang/String;

.field private mLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1259
    new-instance v0, Landroid/app/ActivityManager$TaskDescription$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription$1;-><init>()V

    .line 1258
    sput-object v0, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 993
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move v5, v4

    .line 1049
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    .line 1048
    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0
    .param p1, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 1065
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1066
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$TaskDescription;->copyFrom(Landroid/app/ActivityManager$TaskDescription;)V

    .line 1065
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1082
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$TaskDescription;->readFromParcel(Landroid/os/Parcel;)V

    .line 1081
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move v5, v4

    .line 1042
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    .line 1041
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 1033
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    .line 1032
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 6
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "colorPrimary"    # I

    .prologue
    const/4 v5, 0x0

    .line 1020
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    .line 1021
    if-eqz p3, :cond_0

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    .line 1022
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "A TaskDescription\'s primary color should be opaque"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1019
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;II)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "iconFilename"    # Ljava/lang/String;
    .param p4, "colorPrimary"    # I
    .param p5, "colorBackground"    # I

    .prologue
    .line 1053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1055
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 1056
    iput-object p2, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    .line 1057
    iput-object p3, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 1058
    iput p4, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 1059
    iput p5, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 1054
    return-void
.end method

.method public static loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "iconFilename"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1164
    if-eqz p0, :cond_0

    .line 1166
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/app/IActivityManager;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1172
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public copyFrom(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 1
    .param p1, "other"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 1074
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 1075
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    .line 1076
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 1077
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 1078
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 1073
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1223
    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 1187
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    return v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 1146
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    return-object v0

    .line 1149
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getIconFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getInMemoryIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1159
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryColor()I
    .locals 1

    .prologue
    .line 1179
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 1251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 1252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_1
    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    .line 1253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 1254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 1255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 1250
    return-void

    :cond_1
    move-object v0, v1

    .line 1251
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1252
    goto :goto_1
.end method

.method public restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValue"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x10

    .line 1210
    const-string/jumbo v0, "task_description_label"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1211
    invoke-virtual {p0, p2}, Landroid/app/ActivityManager$TaskDescription;->setLabel(Ljava/lang/String;)V

    .line 1209
    :cond_0
    :goto_0
    return-void

    .line 1212
    :cond_1
    const-string/jumbo v0, "task_description_color"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1213
    invoke-static {p2, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    goto :goto_0

    .line 1214
    :cond_2
    const-string/jumbo v0, "task_description_colorBackground"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1215
    invoke-static {p2, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    goto :goto_0

    .line 1216
    :cond_3
    const-string/jumbo v0, "task_description_icon_filename"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1217
    invoke-virtual {p0, p2}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1192
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1193
    const-string/jumbo v0, "task_description_label"

    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1195
    :cond_0
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    if-eqz v0, :cond_1

    .line 1196
    const-string/jumbo v0, "task_description_color"

    .line 1197
    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1196
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1199
    :cond_1
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    if-eqz v0, :cond_2

    .line 1200
    const-string/jumbo v0, "task_description_colorBackground"

    .line 1201
    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1200
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1203
    :cond_2
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1204
    const-string/jumbo v0, "task_description_icon_filename"

    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1191
    :cond_3
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .param p1, "backgroundColor"    # I

    .prologue
    .line 1111
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    .line 1112
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "A TaskDescription\'s background color should be opaque"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1114
    :cond_0
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 1109
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1122
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    .line 1121
    return-void
.end method

.method public setIconFilename(Ljava/lang/String;)V
    .locals 1
    .param p1, "iconFilename"    # Ljava/lang/String;

    .prologue
    .line 1131
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 1132
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    .line 1130
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 1090
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 1089
    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 2
    .param p1, "primaryColor"    # I

    .prologue
    .line 1099
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    .line 1100
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "A TaskDescription\'s primary color should be opaque"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1102
    :cond_0
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 1097
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TaskDescription Label: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1271
    const-string/jumbo v1, " IconFilename: "

    .line 1270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1271
    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 1270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1271
    const-string/jumbo v1, " colorPrimary: "

    .line 1270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1271
    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 1270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1272
    const-string/jumbo v1, " colorBackground: "

    .line 1270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1272
    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 1270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1228
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1229
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1234
    :goto_0
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 1235
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1240
    :goto_1
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1241
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1242
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1243
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1227
    :goto_2
    return-void

    .line 1231
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1232
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1237
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1238
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1245
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1246
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2
.end method
