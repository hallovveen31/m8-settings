.class public Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "HtcFontStyleParser.java"


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "displayname"

.field private static final NODE_DROIDNAME:Ljava/lang/String; = "droidname"

.field private static final NODE_FILE:Ljava/lang/String; = "file"

.field private static final NODE_FILENAME:Ljava/lang/String; = "filename"

.field private static final NODE_FONT:Ljava/lang/String; = "font"

.field private static final NODE_LANGUAGES:Ljava/lang/String; = "languages"

.field private static final NODE_MONOSPACE:Ljava/lang/String; = "monospace"

.field private static final NODE_SANS:Ljava/lang/String; = "sans"

.field private static final NODE_SERIF:Ljava/lang/String; = "serif"


# instance fields
.field private in_droidname:Z

.field private in_file:Z

.field private in_filename:Z

.field private in_font:Z

.field private in_languages:Z

.field private in_monospace:Z

.field private in_sans:Z

.field private in_serif:Z

.field private mFontFile:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;

.field private mFontStyle:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

.field private mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_font:Z

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_sans:Z

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_languages:Z

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_serif:Z

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_monospace:Z

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_file:Z

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_filename:Z

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_droidname:Z

    iput-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontStyle:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    iput-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontFile:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_languages:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_filename:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontFile:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;->setFileName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_droidname:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontFile:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;->setDroidName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string v3, "font"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_font:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "languages"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_languages:Z

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontStyle:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    iget-object v3, v3, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mLanguages:Ljava/util/List;

    aget-object v4, v1, v0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v3, "sans"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-boolean v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_sans:Z

    goto :goto_0

    :cond_3
    const-string v3, "serif"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_serif:Z

    goto :goto_0

    :cond_4
    const-string v3, "monospace"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iput-boolean v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_monospace:Z

    goto :goto_0

    :cond_5
    const-string v3, "file"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iput-boolean v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_file:Z

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontFile:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_sans:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontStyle:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    iget-object v3, v3, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mSansFonts:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontFile:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    iget-boolean v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_serif:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontStyle:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    iget-object v3, v3, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mSerifFonts:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontFile:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    iget-boolean v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_monospace:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontStyle:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    iget-object v3, v3, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mMonospaceFonts:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontFile:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    const-string v3, "filename"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iput-boolean v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_filename:Z

    goto/16 :goto_0

    :cond_9
    const-string v3, "droidname"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_droidname:Z

    goto/16 :goto_0
.end method

.method public getParsedData()Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontStyle:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    invoke-direct {v0}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontStyle:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x1

    const-string v1, "font"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_font:Z

    const-string v1, "displayname"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontStyle:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->setName(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "languages"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_languages:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :cond_2
    const-string v1, "sans"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_sans:Z

    goto :goto_0

    :cond_3
    const-string v1, "serif"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v2, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_serif:Z

    goto :goto_0

    :cond_4
    const-string v1, "monospace"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-boolean v2, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_monospace:Z

    goto :goto_0

    :cond_5
    const-string v1, "file"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-boolean v2, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_file:Z

    new-instance v1, Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;

    invoke-direct {v1}, Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;-><init>()V

    iput-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontFile:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;

    goto :goto_0

    :cond_6
    const-string v1, "filename"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iput-boolean v2, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_filename:Z

    goto :goto_0

    :cond_7
    const-string v1, "droidname"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_droidname:Z

    goto :goto_0
.end method
