.class public Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;
.super Ljava/lang/Object;
.source "HtcFontStyle.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mFontPackageName:Ljava/lang/String;

.field public final mLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mMonospaceFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field public final mSansFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;",
            ">;"
        }
    .end annotation
.end field

.field public final mSerifFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeface:Landroid/graphics/Typeface;

.field private mTypefaceFilename:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-class v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->TAG:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mName:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mFontPackageName:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mTypefaceFilename:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mTypeface:Landroid/graphics/Typeface;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mSansFonts:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mSerifFonts:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mMonospaceFonts:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mLanguages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFlipFontValue()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mTypefaceFilename:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getFontPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mFontPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getMonospaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mMonospaceFonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSansName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mSansFonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSerifName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mSerifFonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getTypefaceFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mTypefaceFilename:Ljava/lang/String;

    return-object v0
.end method

.method public isSelectableLanguage(Ljava/lang/String;)Z
    .locals 3
    .parameter "lang"

    .prologue
    const/4 v0, 0x1

    .line 69
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mLanguages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mLanguages:Ljava/util/List;

    const-string v2, "all"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mLanguages:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public setFontPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mFontPackageName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .parameter "typeface"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mTypeface:Landroid/graphics/Typeface;

    .line 124
    return-void
.end method

.method public setTypeface(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)V
    .locals 12
    .parameter "fileName"
    .parameter "fontPackageName"
    .parameter "pm"

    .prologue
    .line 127
    const-string v0, "fonts/"

    .line 128
    .local v0, FONT_DIRECTORY:Ljava/lang/String;
    const-string v1, ".ttf"

    .line 134
    .local v1, FONT_EXTENSION:Ljava/lang/String;
    const-string v9, "/"

    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 135
    .local v8, start_pos:I
    const-string v9, "."

    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 136
    .local v5, end_pos:I
    if-gez v5, :cond_0

    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 139
    :cond_0
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, loadTypeface:Ljava/lang/String;
    const-string v9, " "

    const-string v10, ""

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    const/16 v9, 0x80

    :try_start_0
    invoke-virtual {p3, p2, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 144
    .local v3, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v9, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v9, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 145
    invoke-virtual {p3, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v7

    .line 147
    .local v7, res:Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 148
    .local v2, am:Landroid/content/res/AssetManager;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fonts/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".ttf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v2           #am:Landroid/content/res/AssetManager;
    .end local v3           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v7           #res:Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v4

    .line 150
    .local v4, e:Ljava/lang/Exception;
    iget-object v9, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-setTypeface():Check point#1:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/settings/framework/util/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTypefaceFilename(Ljava/lang/String;)V
    .locals 0
    .parameter "typefaceFilename"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mTypefaceFilename:Ljava/lang/String;

    .line 62
    return-void
.end method
