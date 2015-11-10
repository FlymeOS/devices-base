.class public Landroid/content/res/flymetheme/PackageValueHelper;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "PackageValueHelper.java"


# static fields
.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field public static final TAG_COLOR:Ljava/lang/String; = "color"

.field public static final TAG_DIMENSION:Ljava/lang/String; = "dimen"

.field public static final TAG_ROOT:Ljava/lang/String; = "meizu_theme_values"


# instance fields
.field private mAttrName:Ljava/lang/String;

.field private mAttrPkg:Ljava/lang/String;

.field private mCurrentFlag:Z

.field private mPreTag:Ljava/lang/String;

.field mThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;


# direct methods
.method public constructor <init>(Landroid/content/res/flymetheme/FlymeThemeResource;)V
    .locals 2
    .param p1, "themeResource"    # Landroid/content/res/flymetheme/FlymeThemeResource;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v0, p0, Landroid/content/res/flymetheme/PackageValueHelper;->mPreTag:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/res/flymetheme/PackageValueHelper;->mAttrPkg:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/res/flymetheme/PackageValueHelper;->mAttrName:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/content/res/flymetheme/PackageValueHelper;->mCurrentFlag:Z

    iput-object v0, p0, Landroid/content/res/flymetheme/PackageValueHelper;->mThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    iput-boolean v1, p0, Landroid/content/res/flymetheme/PackageValueHelper;->mCurrentFlag:Z

    iput-object p1, p0, Landroid/content/res/flymetheme/PackageValueHelper;->mThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 6
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/content/res/flymetheme/PackageValueHelper;->mPreTag:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .local v0, "con":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/flymetheme/PackageValueHelper;->mPreTag:Ljava/lang/String;

    const-string v4, "color"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/String;

    .end local v0    # "con":Ljava/lang/String;
    const/4 v1, 0x1

    add-int/lit8 v4, p3, -0x1

    invoke-direct {v0, p1, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .restart local v0    # "con":Ljava/lang/String;
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .local v2, "data":J
    iget-object v1, p0, Landroid/content/res/flymetheme/PackageValueHelper;->mThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/res/flymetheme/PackageValueHelper;->mThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    iget-object v4, p0, Landroid/content/res/flymetheme/PackageValueHelper;->mAttrName:Ljava/lang/String;

    iget-object v5, p0, Landroid/content/res/flymetheme/PackageValueHelper;->mAttrPkg:Ljava/lang/String;

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/content/res/flymetheme/FlymeThemeResource;->addColorValue(Ljava/lang/String;JLjava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/flymetheme/PackageValueHelper;->mPreTag:Ljava/lang/String;

    goto :goto_0

    .end local v2    # "data":J
    :cond_3
    iget-object v1, p0, Landroid/content/res/flymetheme/PackageValueHelper;->mPreTag:Ljava/lang/String;

    const-string v4, "dimen"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p2

    .local v0, "tagName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meizu_theme_values"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/res/flymetheme/PackageValueHelper;->mCurrentFlag:Z

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .end local v0    # "tagName":Ljava/lang/String;
    :cond_1
    move-object v0, p3

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, p2

    .local v1, "tagName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "meizu_theme_values"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/content/res/flymetheme/PackageValueHelper;->mCurrentFlag:Z

    :cond_0
    iget-boolean v2, p0, Landroid/content/res/flymetheme/PackageValueHelper;->mCurrentFlag:Z

    if-eqz v2, :cond_1

    const-string v2, "color"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/res/flymetheme/PackageValueHelper;->mAttrName:Ljava/lang/String;

    const-string v2, "package"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/res/flymetheme/PackageValueHelper;->mAttrPkg:Ljava/lang/String;

    :cond_1
    :goto_1
    iput-object p2, p0, Landroid/content/res/flymetheme/PackageValueHelper;->mPreTag:Ljava/lang/String;

    return-void

    .end local v1    # "tagName":Ljava/lang/String;
    :cond_2
    move-object v1, p3

    goto :goto_0

    .restart local v1    # "tagName":Ljava/lang/String;
    :cond_3
    const-string v2, "dimen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    const-string v2, "package"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method
