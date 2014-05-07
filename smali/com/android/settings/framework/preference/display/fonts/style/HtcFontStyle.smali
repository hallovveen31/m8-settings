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

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mFontPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mTypefaceFilename:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mTypeface:Landroid/graphics/Typeface;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mSansFonts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mSerifFonts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mMonospaceFonts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mLanguages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFlipFontValue()I
    .locals 1

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

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mFontPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getMonospaceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mMonospaceFonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSansName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mSansFonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSerifName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mSerifFonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getTypefaceFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mTypefaceFilename:Ljava/lang/String;

    return-object v0
.end method

.method public isSelectableLanguage(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mLanguages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mLanguages:Ljava/util/List;

    const-string v2, "all"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mLanguages:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public setFontPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mFontPackageName:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mName:Ljava/lang/String;

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public setTypeface(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)V
    .locals 12

    const-string v0, "fonts/"

    const-string v1, ".ttf"

    const-string v9, "/"

    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    const-string v9, "."

    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    :cond_0
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v9, " "

    const-string v10, ""

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/16 v9, 0x80

    :try_start_0
    invoke-virtual {p3, p2, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v9, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v9, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p3, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

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

    :goto_0
    return-void

    :catch_0
    move-exception v4

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

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setTypefaceFilename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mTypefaceFilename:Ljava/lang/String;

    return-void
.end method
