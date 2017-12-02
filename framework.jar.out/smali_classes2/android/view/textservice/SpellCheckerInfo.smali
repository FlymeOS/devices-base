.class public final Landroid/view/textservice/SpellCheckerInfo;
.super Ljava/lang/Object;
.source "SpellCheckerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textservice/SpellCheckerInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mLabel:I

.field private final mService:Landroid/content/pm/ResolveInfo;

.field private final mSettingsActivityName:Ljava/lang/String;

.field private final mSubtypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/textservice/SpellCheckerSubtype;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/textservice/SpellCheckerInfo;->TAG:Ljava/lang/String;

    .line 196
    new-instance v0, Landroid/view/textservice/SpellCheckerInfo$1;

    invoke-direct {v0}, Landroid/view/textservice/SpellCheckerInfo$1;-><init>()V

    .line 195
    sput-object v0, Landroid/view/textservice/SpellCheckerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    .line 68
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 69
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    .line 70
    .local v19, "si":Landroid/content/pm/ServiceInfo;
    new-instance v3, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/textservice/SpellCheckerInfo;->mId:Ljava/lang/String;

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 73
    .local v15, "pm":Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    .line 74
    .local v12, "label":I
    const/16 v18, 0x0

    .line 76
    .local v18, "settingsActivityComponent":Ljava/lang/String;
    const/4 v14, 0x0

    .line 78
    .local v14, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string/jumbo v3, "android.view.textservice.scs"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15, v3}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v14

    .line 79
    .local v14, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v14, :cond_1

    .line 80
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v4, "No android.view.textservice.scs meta-data"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .end local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v18    # "settingsActivityComponent":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 131
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Landroid/view/textservice/SpellCheckerInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Caught exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to create context for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 135
    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    .line 134
    :cond_0
    throw v3

    .line 84
    .restart local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v18    # "settingsActivityComponent":Ljava/lang/String;
    :cond_1
    :try_start_2
    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v15, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v16

    .line 85
    .local v16, "res":Landroid/content/res/Resources;
    invoke-static {v14}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    .line 87
    .local v9, "attrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v21

    .local v21, "type":I
    const/4 v3, 0x1

    move/from16 v0, v21

    if-eq v0, v3, :cond_3

    .line 88
    const/4 v3, 0x2

    move/from16 v0, v21

    if-ne v0, v3, :cond_2

    .line 91
    :cond_3
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 92
    .local v13, "nodeName":Ljava/lang/String;
    const-string/jumbo v3, "spell-checker"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 93
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    .line 94
    const-string/jumbo v4, "Meta-data does not start with spell-checker tag"

    .line 93
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    :cond_4
    sget-object v3, Lcom/android/internal/R$styleable;->SpellChecker:[I

    .line 97
    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 99
    .local v17, "sa":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 101
    const/4 v3, 0x1

    .line 100
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 102
    .local v18, "settingsActivityComponent":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    .line 106
    .local v10, "depth":I
    :cond_5
    :goto_0
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v21

    const/4 v3, 0x3

    move/from16 v0, v21

    if-ne v0, v3, :cond_6

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v10, :cond_8

    .line 107
    :cond_6
    const/4 v3, 0x1

    move/from16 v0, v21

    if-eq v0, v3, :cond_8

    .line 108
    const/4 v3, 0x2

    move/from16 v0, v21

    if-ne v0, v3, :cond_5

    .line 109
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 110
    .local v20, "subtypeNodeName":Ljava/lang/String;
    const-string/jumbo v3, "subtype"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 111
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    .line 112
    const-string/jumbo v4, "Meta-data in spell-checker does not start with subtype tag"

    .line 111
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 115
    :cond_7
    sget-object v3, Lcom/android/internal/R$styleable;->SpellChecker_Subtype:[I

    .line 114
    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 116
    .local v8, "a":Landroid/content/res/TypedArray;
    new-instance v2, Landroid/view/textservice/SpellCheckerSubtype;

    .line 117
    const/4 v3, 0x0

    .line 118
    const/4 v4, 0x0

    .line 117
    invoke-virtual {v8, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 119
    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 121
    const/4 v5, 0x4

    invoke-virtual {v8, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 123
    const/4 v6, 0x2

    invoke-virtual {v8, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 125
    const/4 v7, 0x3

    .line 126
    const/16 v22, 0x0

    .line 125
    move/from16 v0, v22

    invoke-virtual {v8, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 116
    invoke-direct/range {v2 .. v7}, Landroid/view/textservice/SpellCheckerSubtype;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    .local v2, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 135
    .end local v2    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v8    # "a":Landroid/content/res/TypedArray;
    .end local v20    # "subtypeNodeName":Ljava/lang/String;
    :cond_8
    if-eqz v14, :cond_9

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    .line 137
    :cond_9
    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/textservice/SpellCheckerInfo;->mLabel:I

    .line 138
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/textservice/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mLabel:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mId:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 149
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 150
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    sget-object v1, Landroid/view/textservice/SpellCheckerSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 145
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/textservice/SpellCheckerInfo;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mSettingsActivityName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/textservice/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Service:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    iget-object v3, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    new-instance v4, Landroid/util/PrintWriterPrinter;

    invoke-direct {v4, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v0

    .line 282
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 283
    invoke-virtual {p0, v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v2

    .line 284
    .local v2, "st":Landroid/view/textservice/SpellCheckerSubtype;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Subtype #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "locale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 286
    const-string/jumbo v4, " languageTag="

    .line 285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 286
    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v4

    .line 285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "extraValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 276
    .end local v2    # "st":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_0
    return-void
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 165
    new-instance v0, Landroid/content/ComponentName;

    .line 166
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 165
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public getSettingsActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 262
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/SpellCheckerSubtype;

    return-object v0
.end method

.method public getSubtypeCount()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 224
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 214
    iget v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mLabel:I

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    .line 215
    :cond_1
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/view/textservice/SpellCheckerInfo;->mLabel:I

    iget-object v2, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 184
    iget v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 188
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 183
    return-void
.end method
