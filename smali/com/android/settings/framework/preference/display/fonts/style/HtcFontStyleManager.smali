.class public Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;
.super Ljava/lang/Object;
.source "HtcFontStyleManager.java"


# static fields
.field private static final ACTION_FONT_STYLE_CHANGED:Ljava/lang/String; = "com.htc.intent.action.FONT_STYLE_CHANGED"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final DEFAULT_FLIPFONT_PATH:Ljava/lang/String; = "default"

.field public static final DEFAULT_FLIPFONT_TYPEFACE_FILENAME:Ljava/lang/String; = "default"

.field public static final DEFAULT_FLIPFONT_VALUE:Ljava/lang/String; = null

.field private static final FONT_STYLE_FILE_SIZE_MAX:I = 0x6400000

.field public static final INDEX_FONT_STYLE_DEFAULT:I = 0x0

.field public static final INDEX_FONT_STYLE_NOT_FOUND:I = -0x1

.field private static final NAME_FONT_STYLE_PACKAGE_SHARED_PREFERENCES:Ljava/lang/String; = "font_style_package_shared_preferences"

.field public static final PREFIX_FONT_PACKAGE:Ljava/lang/String; = "com.monotype.android.font"

.field public static final PREFIX_FONT_PACKAGE_MOPPO:Ljava/lang/String; = "com.monotype.android.font.moppo"

.field private static final SEPARATOR:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String;

.field private static mCurrentFlipFont:I

.field public static mHtcFontStyleEntries:[Ljava/lang/String;

.field private static mHtcFontStyleHashCode:[I

.field public static mHtcFontStyles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsNeedToReloadFontStyle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->TAG:Ljava/lang/String;

    .line 37
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->DEBUG:Z

    .line 46
    const-string v0, "default"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->DEFAULT_FLIPFONT_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyFontStyle(Landroid/content/Context;I)V
    .locals 24
    .parameter "context"
    .parameter "which"

    .prologue
    .line 112
    sget-boolean v20, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->DEBUG:Z

    if-eqz v20, :cond_0

    .line 113
    sget-object v20, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->TAG:Ljava/lang/String;

    const-string v21, "-applyFontStyle()"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    sget-object v20, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mHtcFontStyleHashCode:[I

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 116
    sget-object v20, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->TAG:Ljava/lang/String;

    const-string v21, "Latest font style item not exist, apply default font."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/16 p1, 0x0

    .line 119
    :cond_1
    const-string v20, "persist.sys.flipfont_hashcode"

    sget-object v21, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->DEFAULT_FLIPFONT_VALUE:Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    sput v20, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mCurrentFlipFont:I

    .line 120
    sget-object v20, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mHtcFontStyleHashCode:[I

    aget v20, v20, p1

    sget v21, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mCurrentFlipFont:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 121
    sget-boolean v20, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->DEBUG:Z

    if-eqz v20, :cond_2

    .line 122
    sget-object v20, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->TAG:Ljava/lang/String;

    const-string v21, "Font style not changed, no need to apply it."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_2
    :goto_0
    return-void

    .line 126
    :cond_3
    new-instance v12, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;

    invoke-direct {v12}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;-><init>()V

    .line 127
    .local v12, fontWriter:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;
    if-nez p1, :cond_4

    .line 128
    const-string v20, "sans.loc"

    const-string v21, "default"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 186
    .local v3, am:Landroid/app/IActivityManager;
    :try_start_0
    sget-object v20, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mHtcFontStyleHashCode:[I

    aget v20, v20, p1

    sput v20, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mCurrentFlipFont:I

    .line 187
    const-string v20, "persist.sys.flipfont_hashcode"

    sget v21, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mCurrentFlipFont:I

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-interface {v3}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 190
    .local v7, config:Landroid/content/res/Configuration;
    sget v20, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mCurrentFlipFont:I

    move/from16 v0, v20

    iput v0, v7, Landroid/content/res/Configuration;->FlipFont:I

    .line 191
    invoke-interface {v3, v7}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 194
    new-instance v15, Landroid/content/Intent;

    const-string v20, "com.htc.intent.action.FONT_STYLE_CHANGED"

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v15, intent:Landroid/content/Intent;
    const-string v20, "com.htc.permission.APP_PLATFORM"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    .end local v7           #config:Landroid/content/res/Configuration;
    .end local v15           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v8

    .line 197
    .local v8, e:Landroid/os/RemoteException;
    sget-object v20, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "-applyFontStyle():Check point#2:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v3           #am:Landroid/app/IActivityManager;
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 132
    .local v16, pm:Landroid/content/pm/PackageManager;
    sget-object v20, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mHtcFontStyles:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v11

    .line 133
    .local v11, fontStyleFileName:Ljava/lang/String;
    const-string v20, ".xml"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 134
    .local v9, folderName:Ljava/lang/String;
    const-string v20, " "

    const-string v21, "-"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 138
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v9, v0}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->removeIllegalCharsForFilePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 140
    .local v10, fontDir:Ljava/io/File;
    invoke-static {v11}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    move-result-object v18

    .line 141
    .local v18, sansTypeface:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;
    const/16 v19, 0x0

    .line 142
    .local v19, tpf:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;
    const/4 v14, 0x0

    .line 143
    .local v14, in:Ljava/io/InputStream;
    if-eqz v18, :cond_7

    .line 144
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mSansFonts:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_7

    .line 145
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mSansFonts:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #tpf:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;
    check-cast v19, Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;

    .line 148
    .restart local v19       #tpf:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->getFontPackageName()Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, apkName:Ljava/lang/String;
    const/16 v20, 0x80

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 150
    .local v5, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 151
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v17

    .line 152
    .local v17, res:Landroid/content/res/Resources;
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 153
    .local v6, assetManager:Landroid/content/res/AssetManager;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "fonts/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    .line 158
    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->removeIllegalCharsForFilePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v10, v14, v0}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    const/4 v14, 0x0

    .line 165
    if-eqz v14, :cond_5

    .line 166
    :try_start_2
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 167
    .end local v4           #apkName:Ljava/lang/String;
    .end local v5           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v6           #assetManager:Landroid/content/res/AssetManager;
    .end local v17           #res:Landroid/content/res/Resources;
    :goto_3
    const/4 v14, 0x0

    .line 144
    :cond_5
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 160
    :catch_1
    move-exception v8

    .line 161
    .local v8, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v20, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "-applyFontStyle():Check point#1:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 165
    if-eqz v14, :cond_5

    .line 166
    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 169
    :catch_2
    move-exception v8

    .line 170
    sget-object v20, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "-applyFontStyle():Check point#3:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_5
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 164
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v20

    .line 165
    if-eqz v14, :cond_6

    .line 166
    :try_start_5
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 167
    const/4 v14, 0x0

    .line 164
    :cond_6
    :goto_6
    throw v20

    .line 180
    .end local v13           #i:I
    :cond_7
    const-string v20, "sans.loc"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->getSansName()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->removeIllegalCharsForFilePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 169
    .restart local v13       #i:I
    :catch_3
    move-exception v8

    .line 170
    .restart local v8       #e:Ljava/lang/Exception;
    sget-object v21, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "-applyFontStyle():Check point#3:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 169
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v4       #apkName:Ljava/lang/String;
    .restart local v5       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #assetManager:Landroid/content/res/AssetManager;
    .restart local v17       #res:Landroid/content/res/Resources;
    :catch_4
    move-exception v8

    .line 170
    .restart local v8       #e:Ljava/lang/Exception;
    sget-object v20, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "-applyFontStyle():Check point#3:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private static findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;
    .locals 3
    .parameter "typefaceFilename"

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, typeface:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mHtcFontStyles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 102
    sget-object v2, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mHtcFontStyles:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #typeface:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;
    check-cast v1, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    .line 103
    .restart local v1       #typeface:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;
    invoke-virtual {v1}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    :cond_0
    return-object v1

    .line 101
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getConfigLanguage()Ljava/lang/String;
    .locals 7

    .prologue
    .line 326
    const-string v3, ""

    .line 327
    .local v3, language:Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 329
    .local v0, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 330
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 336
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return-object v3

    .line 331
    :catch_0
    move-exception v2

    .line 332
    .local v2, e:Landroid/os/RemoteException;
    sget-object v4, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-getConfigLanguage():Check point#1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCurrentFontStyleIndex(I)I
    .locals 3
    .parameter "defValue"

    .prologue
    .line 203
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mHtcFontStyleHashCode:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 204
    sget-object v1, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mHtcFontStyleHashCode:[I

    aget v1, v1, v0

    sget v2, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mCurrentFlipFont:I

    if-ne v1, v2, :cond_0

    .line 209
    .end local v0           #i:I
    :goto_1
    return v0

    .line 203
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p0

    .line 209
    goto :goto_1
.end method

.method public static getFontPackages(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 437
    const-string v4, "font_style_package_shared_preferences"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 440
    .local v2, pref:Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    .line 441
    .local v3, result:[Ljava/lang/String;
    const-string v1, "monotype_fonts"

    .line 442
    .local v1, key:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, fonts:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 444
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 447
    :cond_0
    return-object v3
.end method

.method public static getFontStyleEntry()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mHtcFontStyleEntries:[Ljava/lang/String;

    return-object v0
.end method

.method public static getFontStyleHashCode()[I
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mHtcFontStyleHashCode:[I

    return-object v0
.end method

.method public static getFontStyleList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    sget-object v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mHtcFontStyles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getReloadFontStyle()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mIsNeedToReloadFontStyle:Z

    return v0
.end method

.method public static initializeFontStyle(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 57
    sget-boolean v2, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 58
    sget-object v2, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->TAG:Ljava/lang/String;

    const-string v3, "-initializeFontStyle()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    const-string v2, "persist.sys.flipfont_hashcode"

    sget-object v3, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->DEFAULT_FLIPFONT_VALUE:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mCurrentFlipFont:I

    .line 61
    invoke-static {p0}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->loadFontStyle(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mHtcFontStyles:Ljava/util/ArrayList;

    .line 62
    sget-object v2, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mHtcFontStyles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mHtcFontStyleEntries:[Ljava/lang/String;

    .line 63
    sget-object v2, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mHtcFontStyles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    sput-object v2, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mHtcFontStyleHashCode:[I

    .line 64
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mHtcFontStyles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 65
    sget-object v2, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mHtcFontStyles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    .line 66
    .local v0, fontStyle:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;
    if-eqz v0, :cond_1

    .line 67
    sget-object v2, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mHtcFontStyleEntries:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->getSansName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 68
    sget-object v2, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mHtcFontStyleHashCode:[I

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->getFlipFontValue()I

    move-result v3

    aput v3, v2, v1

    .line 64
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v0           #fontStyle:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;
    :cond_2
    return-void
.end method

.method private static loadFontStyle(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 32
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    const/16 v27, 0x0

    .line 217
    .local v27, xmlfiles:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 220
    .local v21, pm:Landroid/content/pm/PackageManager;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v19, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;>;"
    new-instance v5, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    invoke-direct {v5}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;-><init>()V

    .line 224
    .local v5, defFontStyle:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;
    iget-object v0, v5, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mSansFonts:Ljava/util/List;

    move-object/from16 v29, v0

    new-instance v30, Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;

    invoke-direct/range {v30 .. v30}, Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;-><init>()V

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0c0b19

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->setName(Ljava/lang/String;)V

    .line 226
    const-string v29, "default"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->setTypefaceFilename(Ljava/lang/String;)V

    .line 227
    const-string v29, "/system/fonts/Roboto-Regular.ttf"

    invoke-static/range {v29 .. v29}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->setTypeface(Landroid/graphics/Typeface;)V

    .line 228
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :try_start_0
    invoke-static {}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->getConfigLanguage()Ljava/lang/String;

    move-result-object v17

    .line 233
    .local v17, lang:Ljava/lang/String;
    const/16 v29, 0x80

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v20

    .line 235
    .local v20, mInstalledApplications:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v7, 0x0

    .line 236
    .local v7, fontPackageName:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v11, v0, :cond_1

    .line 237
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v29

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 238
    const-string v29, "com.monotype.android.font"

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_0

    const-string v29, "com.monotype.android.font.moppo"

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 240
    :cond_0
    const/16 v29, 0x80

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 241
    .local v3, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iput-object v0, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 242
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v23

    .line 243
    .local v23, res:Landroid/content/res/Resources;
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 245
    .local v2, am:Landroid/content/res/AssetManager;
    :try_start_1
    const-string v29, "xml"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v27

    .line 252
    :goto_1
    const/4 v13, 0x0

    .line 253
    .local v13, inForXml:Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 254
    .local v12, inForFontSize:Ljava/io/InputStream;
    const/4 v15, 0x0

    .local v15, j:I
    :goto_2
    :try_start_2
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v29, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v0, v29

    if-ge v15, v0, :cond_c

    .line 256
    :try_start_3
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "xml/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    aget-object v30, v27, v15

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    .line 257
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v25

    .line 258
    .local v25, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual/range {v25 .. v25}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v24

    .line 259
    .local v24, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual/range {v24 .. v24}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v28

    .line 261
    .local v28, xr:Lorg/xml/sax/XMLReader;
    new-instance v8, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;

    invoke-direct {v8}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;-><init>()V

    .line 262
    .local v8, fontParser:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;
    move-object/from16 v0, v28

    invoke-interface {v0, v8}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 263
    new-instance v29, Lorg/xml/sax/InputSource;

    move-object/from16 v0, v29

    invoke-direct {v0, v13}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface/range {v28 .. v29}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 264
    invoke-virtual {v8}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;->getParsedData()Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;

    move-result-object v9

    .line 268
    .local v9, fontStyle:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;
    const/16 v26, 0x0

    .line 270
    .local v26, tpf:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;
    const/4 v14, 0x0

    .line 271
    .local v14, isFontSizeTooLarge:Z
    const/16 v16, 0x0

    .local v16, k:I
    :goto_3
    iget-object v0, v9, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mSansFonts:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_4

    .line 272
    iget-object v0, v9, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->mSansFonts:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26           #tpf:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;
    check-cast v26, Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;

    .line 273
    .restart local v26       #tpf:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;
    invoke-virtual/range {v26 .. v26}, Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v10

    .line 274
    .local v10, fontStyleFileName:Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "fonts/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 275
    const/16 v22, 0x0

    .line 276
    .local v22, read:I
    const/16 v18, 0x0

    .line 277
    .local v18, length:I
    const/16 v29, 0x400

    move/from16 v0, v29

    new-array v4, v0, [B

    .line 278
    .local v4, b:[B
    :goto_4
    invoke-virtual {v12, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v22

    if-lez v22, :cond_2

    .line 279
    add-int v18, v18, v22

    goto :goto_4

    .line 246
    .end local v4           #b:[B
    .end local v8           #fontParser:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;
    .end local v9           #fontStyle:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;
    .end local v10           #fontStyleFileName:Ljava/lang/String;
    .end local v12           #inForFontSize:Ljava/io/InputStream;
    .end local v13           #inForXml:Ljava/io/InputStream;
    .end local v14           #isFontSizeTooLarge:Z
    .end local v15           #j:I
    .end local v16           #k:I
    .end local v18           #length:I
    .end local v22           #read:I
    .end local v24           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v25           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v26           #tpf:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;
    .end local v28           #xr:Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v6

    .line 247
    .local v6, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v29, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "-loadFontStyle():Check point#1:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 317
    .end local v2           #am:Landroid/content/res/AssetManager;
    .end local v3           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #fontPackageName:Ljava/lang/String;
    .end local v11           #i:I
    .end local v17           #lang:Ljava/lang/String;
    .end local v20           #mInstalledApplications:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v23           #res:Landroid/content/res/Resources;
    :catch_1
    move-exception v6

    .line 318
    .restart local v6       #e:Ljava/lang/Exception;
    sget-object v29, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "-loadFontStyle():Check point#3:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 322
    .end local v6           #e:Ljava/lang/Exception;
    :cond_1
    return-object v19

    .line 282
    .restart local v2       #am:Landroid/content/res/AssetManager;
    .restart local v3       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v4       #b:[B
    .restart local v7       #fontPackageName:Ljava/lang/String;
    .restart local v8       #fontParser:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;
    .restart local v9       #fontStyle:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;
    .restart local v10       #fontStyleFileName:Ljava/lang/String;
    .restart local v11       #i:I
    .restart local v12       #inForFontSize:Ljava/io/InputStream;
    .restart local v13       #inForXml:Ljava/io/InputStream;
    .restart local v14       #isFontSizeTooLarge:Z
    .restart local v15       #j:I
    .restart local v16       #k:I
    .restart local v17       #lang:Ljava/lang/String;
    .restart local v18       #length:I
    .restart local v20       #mInstalledApplications:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v22       #read:I
    .restart local v23       #res:Landroid/content/res/Resources;
    .restart local v24       #sp:Ljavax/xml/parsers/SAXParser;
    .restart local v25       #spf:Ljavax/xml/parsers/SAXParserFactory;
    .restart local v26       #tpf:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;
    .restart local v28       #xr:Lorg/xml/sax/XMLReader;
    :cond_2
    if-eqz v12, :cond_3

    .line 283
    :try_start_5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 284
    const/4 v12, 0x0

    .line 287
    :cond_3
    const/high16 v29, 0x640

    move/from16 v0, v18

    move/from16 v1, v29

    if-le v0, v1, :cond_8

    .line 288
    const/4 v14, 0x1

    .line 289
    sget-object v29, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Font style:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " size is too large."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .end local v4           #b:[B
    .end local v10           #fontStyleFileName:Ljava/lang/String;
    .end local v18           #length:I
    .end local v22           #read:I
    :cond_4
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->isSelectableLanguage(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_5

    if-nez v14, :cond_5

    .line 295
    aget-object v29, v27, v15

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->setTypefaceFilename(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v9, v7}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->setFontPackageName(Ljava/lang/String;)V

    .line 297
    aget-object v29, v27, v15

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v7, v1}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;->setTypeface(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    .line 298
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 304
    :cond_5
    if-eqz v13, :cond_6

    .line 305
    :try_start_6
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 306
    const/4 v13, 0x0

    .line 309
    :cond_6
    if-eqz v12, :cond_7

    .line 310
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 311
    .end local v8           #fontParser:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;
    .end local v9           #fontStyle:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;
    .end local v14           #isFontSizeTooLarge:Z
    .end local v16           #k:I
    .end local v24           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v25           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v26           #tpf:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;
    .end local v28           #xr:Lorg/xml/sax/XMLReader;
    :goto_5
    const/4 v12, 0x0

    .line 254
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 271
    .restart local v4       #b:[B
    .restart local v8       #fontParser:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;
    .restart local v9       #fontStyle:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;
    .restart local v10       #fontStyleFileName:Ljava/lang/String;
    .restart local v14       #isFontSizeTooLarge:Z
    .restart local v16       #k:I
    .restart local v18       #length:I
    .restart local v22       #read:I
    .restart local v24       #sp:Ljavax/xml/parsers/SAXParser;
    .restart local v25       #spf:Ljavax/xml/parsers/SAXParserFactory;
    .restart local v26       #tpf:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;
    .restart local v28       #xr:Lorg/xml/sax/XMLReader;
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 300
    .end local v4           #b:[B
    .end local v8           #fontParser:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleParser;
    .end local v9           #fontStyle:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyle;
    .end local v10           #fontStyleFileName:Ljava/lang/String;
    .end local v14           #isFontSizeTooLarge:Z
    .end local v16           #k:I
    .end local v18           #length:I
    .end local v22           #read:I
    .end local v24           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v25           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v26           #tpf:Lcom/android/settings/framework/preference/display/fonts/style/HtcTypefaceFile;
    .end local v28           #xr:Lorg/xml/sax/XMLReader;
    :catch_2
    move-exception v6

    .line 301
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_7
    sget-object v29, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "-loadFontStyle():Check point#2:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 304
    if-eqz v13, :cond_9

    .line 305
    :try_start_8
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 306
    const/4 v13, 0x0

    .line 309
    :cond_9
    if-eqz v12, :cond_7

    .line 310
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    goto :goto_5

    .line 304
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v29

    if-eqz v13, :cond_a

    .line 305
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 306
    const/4 v13, 0x0

    .line 309
    :cond_a
    if-eqz v12, :cond_b

    .line 310
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 311
    const/4 v12, 0x0

    .line 304
    :cond_b
    throw v29
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 236
    .end local v2           #am:Landroid/content/res/AssetManager;
    .end local v3           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v12           #inForFontSize:Ljava/io/InputStream;
    .end local v13           #inForXml:Ljava/io/InputStream;
    .end local v15           #j:I
    .end local v23           #res:Landroid/content/res/Resources;
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0
.end method

.method public static removeFontPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v6, 0x0

    .line 393
    sget-boolean v7, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 394
    sget-object v7, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->TAG:Ljava/lang/String;

    const-string v8, "-removeFontPackage()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    const-string v7, "font_style_package_shared_preferences"

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 399
    .local v4, pref:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 401
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "monotype_fonts"

    .line 402
    .local v3, key:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-interface {v4, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, fonts:Ljava/lang/String;
    const/4 v5, 0x0

    .line 406
    .local v5, start:I
    if-eqz v2, :cond_4

    .line 407
    const-string v6, ""

    invoke-virtual {v2, p1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 408
    const-string v6, ";;"

    const-string v7, ";"

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 409
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 410
    .local v1, end:I
    const-string v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 411
    const/4 v5, 0x1

    .line 414
    :cond_1
    const-string v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_2

    .line 415
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v1, v6, -0x2

    .line 418
    :cond_2
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 424
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 426
    sget-boolean v6, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 427
    sget-object v6, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "package list = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_3
    const/4 v6, 0x1

    .end local v1           #end:I
    :cond_4
    return v6
.end method

.method private static removeIllegalCharsForFilePath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "fname"
    .parameter "isFile"

    .prologue
    .line 340
    const-string v0, "."

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 341
    const-string v0, "~"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 342
    const-string v0, "/"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 344
    if-eqz p1, :cond_0

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ttf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 350
    :cond_0
    return-object p0
.end method

.method public static saveFontPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v5, 0x0

    .line 357
    sget-boolean v6, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 358
    sget-object v6, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->TAG:Ljava/lang/String;

    const-string v7, "-saveFontPackage()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    const-string v6, "font_style_package_shared_preferences"

    invoke-virtual {p0, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 363
    .local v3, pref:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 365
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "monotype_fonts"

    .line 366
    .local v2, key:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-interface {v3, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, fonts:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v4, sb:Ljava/lang/StringBuilder;
    if-eqz v1, :cond_3

    .line 370
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 371
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 380
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 382
    sget-boolean v5, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 383
    sget-object v5, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "package name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "package list = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_1
    const/4 v5, 0x1

    :cond_2
    return v5

    .line 376
    :cond_3
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static setReloadFontStyle(Z)V
    .locals 0
    .parameter "reload"

    .prologue
    .line 74
    sput-boolean p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mIsNeedToReloadFontStyle:Z

    .line 75
    return-void
.end method
