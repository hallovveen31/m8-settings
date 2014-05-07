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

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 44
    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_font:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_sans:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_languages:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_serif:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_monospace:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_file:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_filename:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_droidname:Z

    .line 56
    iput-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontStyle:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    .line 57
    iput-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontFile:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_languages:Z

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_filename:Z

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontFile:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;->setFileName(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_droidname:Z

    if-eqz v0, :cond_0

    .line 163
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

    .prologue
    .line 75
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 117
    const-string v3, "font"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    iput-boolean v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_font:Z

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const-string v3, "languages"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 120
    iput-boolean v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_languages:Z

    .line 122
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, langs:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 124
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, langList:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontStyle:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    iget-object v3, v3, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mLanguages:Ljava/util/List;

    aget-object v4, v1, v0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 128
    .end local v0           #i:I
    .end local v1           #langList:[Ljava/lang/String;
    .end local v2           #langs:Ljava/lang/String;
    :cond_2
    const-string v3, "sans"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 129
    iput-boolean v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_sans:Z

    goto :goto_0

    .line 130
    :cond_3
    const-string v3, "serif"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 131
    iput-boolean v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_serif:Z

    goto :goto_0

    .line 132
    :cond_4
    const-string v3, "monospace"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 133
    iput-boolean v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_monospace:Z

    goto :goto_0

    .line 134
    :cond_5
    const-string v3, "file"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 135
    iput-boolean v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_file:Z

    .line 136
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontFile:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;

    if-eqz v3, :cond_0

    .line 137
    iget-boolean v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_sans:Z

    if-eqz v3, :cond_6

    .line 138
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontStyle:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    iget-object v3, v3, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mSansFonts:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontFile:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :cond_6
    iget-boolean v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_serif:Z

    if-eqz v3, :cond_7

    .line 140
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontStyle:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    iget-object v3, v3, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mSerifFonts:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontFile:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :cond_7
    iget-boolean v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_monospace:Z

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontStyle:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    iget-object v3, v3, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mMonospaceFonts:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontFile:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 145
    :cond_8
    const-string v3, "filename"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 146
    iput-boolean v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_filename:Z

    goto/16 :goto_0

    .line 147
    :cond_9
    const-string v3, "droidname"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    iput-boolean v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_droidname:Z

    goto/16 :goto_0
.end method

.method public getParsedData()Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;
    .locals 1

    .prologue
    .line 64
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

    .prologue
    .line 69
    new-instance v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    invoke-direct {v0}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontStyle:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    .line 70
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 85
    const-string v1, "font"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iput-boolean v2, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_font:Z

    .line 87
    const-string v1, "displayname"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, attrValue:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontStyle:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->setName(Ljava/lang/String;)V

    .line 107
    .end local v0           #attrValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const-string v1, "languages"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    iput-boolean v2, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_languages:Z

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 92
    iget-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 93
    :cond_2
    const-string v1, "sans"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    iput-boolean v2, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_sans:Z

    goto :goto_0

    .line 95
    :cond_3
    const-string v1, "serif"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    iput-boolean v2, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_serif:Z

    goto :goto_0

    .line 97
    :cond_4
    const-string v1, "monospace"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 98
    iput-boolean v2, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_monospace:Z

    goto :goto_0

    .line 99
    :cond_5
    const-string v1, "file"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 100
    iput-boolean v2, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_file:Z

    .line 101
    new-instance v1, Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;

    invoke-direct {v1}, Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;-><init>()V

    iput-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->mFontFile:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;

    goto :goto_0

    .line 102
    :cond_6
    const-string v1, "filename"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 103
    iput-boolean v2, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_filename:Z

    goto :goto_0

    .line 104
    :cond_7
    const-string v1, "droidname"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iput-boolean v2, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->in_droidname:Z

    goto :goto_0
.end method
