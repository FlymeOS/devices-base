.class Lcom/android/server/policy/ShortcutManager;
.super Ljava/lang/Object;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTRIBUTE_CLASS:Ljava/lang/String; = "class"

.field private static final ATTRIBUTE_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTRIBUTE_SHIFT:Ljava/lang/String; = "shift"

.field private static final ATTRIBUTE_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG:Ljava/lang/String; = "ShortcutManager"

.field private static final TAG_BOOKMARK:Ljava/lang/String; = "bookmark"

.field private static final TAG_BOOKMARKS:Ljava/lang/String; = "bookmarks"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mShiftShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/policy/ShortcutManager$ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/policy/ShortcutManager$ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    .line 61
    iput-object p1, p0, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Lcom/android/server/policy/ShortcutManager;->loadShortcuts()V

    .line 60
    return-void
.end method

.method private loadShortcuts()V
    .locals 25

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 107
    .local v13, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 108
    const v23, 0x1110003

    .line 107
    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v16

    .line 109
    .local v16, "parser":Landroid/content/res/XmlResourceParser;
    const-string/jumbo v22, "bookmarks"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 112
    :goto_0
    invoke-static/range {v16 .. v16}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 114
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 104
    .end local v16    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_0
    :goto_1
    return-void

    .line 118
    .restart local v16    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_1
    const-string/jumbo v22, "bookmark"

    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 122
    const-string/jumbo v22, "package"

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 123
    .local v14, "packageName":Ljava/lang/String;
    const-string/jumbo v22, "class"

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "className":Ljava/lang/String;
    const-string/jumbo v22, "shortcut"

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 125
    .local v20, "shortcutName":Ljava/lang/String;
    const-string/jumbo v22, "category"

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "categoryName":Ljava/lang/String;
    const-string/jumbo v22, "shift"

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 128
    .local v17, "shiftName":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 129
    const-string/jumbo v22, "ShortcutManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unable to get shortcut for: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 182
    .end local v3    # "categoryName":Ljava/lang/String;
    .end local v4    # "className":Ljava/lang/String;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v16    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v17    # "shiftName":Ljava/lang/String;
    .end local v20    # "shortcutName":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 183
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v22, "ShortcutManager"

    const-string/jumbo v23, "Got exception parsing bookmarks."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 133
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "categoryName":Ljava/lang/String;
    .restart local v4    # "className":Ljava/lang/String;
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v16    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v17    # "shiftName":Ljava/lang/String;
    .restart local v20    # "shortcutName":Ljava/lang/String;
    :cond_2
    const/16 v22, 0x0

    :try_start_1
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    .line 134
    .local v19, "shortcutChar":I
    if-eqz v17, :cond_3

    const-string/jumbo v22, "true"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 138
    :goto_2
    if-eqz v14, :cond_4

    if-eqz v4, :cond_4

    .line 139
    const/4 v10, 0x0

    .line 140
    .local v10, "info":Landroid/content/pm/ActivityInfo;
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v14, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    .local v5, "componentName":Landroid/content/ComponentName;
    const v22, 0xc2000

    .line 142
    :try_start_2
    move/from16 v0, v22

    invoke-virtual {v13, v5, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    .line 162
    .local v10, "info":Landroid/content/pm/ActivityInfo;
    :goto_3
    :try_start_3
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v22, "android.intent.action.MAIN"

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v11, "intent":Landroid/content/Intent;
    const-string/jumbo v22, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {v11, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 165
    invoke-virtual {v10, v13}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    .line 175
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "info":Landroid/content/pm/ActivityInfo;
    .local v21, "title":Ljava/lang/String;
    :goto_4
    new-instance v18, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v11}, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 176
    .local v18, "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    if-eqz v12, :cond_6

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/ShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 184
    .end local v3    # "categoryName":Ljava/lang/String;
    .end local v4    # "className":Ljava/lang/String;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v16    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v17    # "shiftName":Ljava/lang/String;
    .end local v18    # "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    .end local v19    # "shortcutChar":I
    .end local v20    # "shortcutName":Ljava/lang/String;
    .end local v21    # "title":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 185
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v22, "ShortcutManager"

    const-string/jumbo v23, "Got exception parsing bookmarks."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 134
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v3    # "categoryName":Ljava/lang/String;
    .restart local v4    # "className":Ljava/lang/String;
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v16    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v17    # "shiftName":Ljava/lang/String;
    .restart local v19    # "shortcutChar":I
    .restart local v20    # "shortcutName":Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    .local v12, "isShiftShortcut":Z
    goto :goto_2

    .line 146
    .end local v12    # "isShiftShortcut":Z
    .restart local v5    # "componentName":Landroid/content/ComponentName;
    .local v10, "info":Landroid/content/pm/ActivityInfo;
    :catch_2
    move-exception v6

    .line 148
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v22, 0x1

    :try_start_4
    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v14, v22, v23

    .line 147
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 149
    .local v15, "packages":[Ljava/lang/String;
    new-instance v5, Landroid/content/ComponentName;

    .end local v5    # "componentName":Landroid/content/ComponentName;
    const/16 v22, 0x0

    aget-object v22, v15, v22

    move-object/from16 v0, v22

    invoke-direct {v5, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 152
    .restart local v5    # "componentName":Landroid/content/ComponentName;
    const v22, 0xc2000

    .line 151
    :try_start_5
    move/from16 v0, v22

    invoke-virtual {v13, v5, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v10

    .local v10, "info":Landroid/content/pm/ActivityInfo;
    goto :goto_3

    .line 155
    .local v10, "info":Landroid/content/pm/ActivityInfo;
    :catch_3
    move-exception v9

    .line 156
    .local v9, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    const-string/jumbo v22, "ShortcutManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unable to add bookmark: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 157
    const-string/jumbo v24, "/"

    .line 156
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 166
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "info":Landroid/content/pm/ActivityInfo;
    .end local v15    # "packages":[Ljava/lang/String;
    :cond_4
    if-eqz v3, :cond_5

    .line 167
    const-string/jumbo v22, "android.intent.action.MAIN"

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 168
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v21, ""

    .restart local v21    # "title":Ljava/lang/String;
    goto/16 :goto_4

    .line 170
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v21    # "title":Ljava/lang/String;
    :cond_5
    const-string/jumbo v22, "ShortcutManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unable to add bookmark for shortcut "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 171
    const-string/jumbo v24, ": missing package/class or category attributes"

    .line 170
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 179
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v18    # "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    .restart local v21    # "title":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0
.end method


# virtual methods
.method public getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;
    .locals 7
    .param p1, "kcm"    # Landroid/view/KeyCharacterMap;
    .param p2, "keyCode"    # I
    .param p3, "metaState"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 81
    const/4 v1, 0x0

    .line 84
    .local v1, "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    and-int/lit8 v6, p3, 0x1

    if-ne v6, v0, :cond_3

    .line 85
    .local v0, "isShiftOn":Z
    :goto_0
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/ShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    .line 88
    .local v3, "shortcutMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/policy/ShortcutManager$ShortcutInfo;>;"
    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v2

    .line 89
    .local v2, "shortcutChar":I
    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    check-cast v1, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    .line 94
    :cond_0
    if-nez v1, :cond_1

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 96
    if-eqz v2, :cond_1

    .line 97
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    .line 101
    :cond_1
    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;->intent:Landroid/content/Intent;

    :cond_2
    return-object v4

    .end local v0    # "isShiftOn":Z
    .end local v2    # "shortcutChar":I
    .end local v3    # "shortcutMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/policy/ShortcutManager$ShortcutInfo;>;"
    .restart local v1    # "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    :cond_3
    move v0, v5

    .line 84
    goto :goto_0

    .line 85
    .restart local v0    # "isShiftOn":Z
    :cond_4
    iget-object v3, p0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    .restart local v3    # "shortcutMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/policy/ShortcutManager$ShortcutInfo;>;"
    goto :goto_1
.end method
