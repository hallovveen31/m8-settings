.class public Lcom/android/settings/framework/core/display/HtcFontSizeManager;
.super Ljava/lang/Object;
.source "HtcFontSizeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/display/HtcFontSizeManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/display/HtcFontSizeManager;->TAG:Ljava/lang/String;

    .line 32
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/display/HtcFontSizeManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/settings/framework/core/display/HtcFontSizeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/android/settings/framework/core/display/HtcFontSizeManager;->DEBUG:Z

    return v0
.end method

.method public static getHtcFontSize(Landroid/content/Context;)Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;
    .locals 2
    .parameter "context"

    .prologue
    .line 291
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 292
    .local v0, conf:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->fontsize:I

    invoke-static {v1}, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->findFontSize(I)Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

    move-result-object v1

    return-object v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 296
    sget-object v0, Lcom/android/settings/framework/core/display/HtcFontSizeManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void
.end method

.method public static setFontSize(Landroid/content/Context;Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;)Z
    .locals 20
    .parameter "context"
    .parameter "fontSize"

    .prologue
    .line 173
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 174
    :cond_0
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Failed to invoke setFontSize(...)\n - context: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n - fontSize: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 180
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 181
    .local v12, res:Landroid/content/res/Resources;
    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 182
    .local v5, config:Landroid/content/res/Configuration;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 183
    .local v2, am:Landroid/app/IActivityManager;
    const/4 v14, 0x1

    .line 185
    .local v14, successful:Z
    sget-boolean v16, Lcom/android/settings/framework/core/display/HtcFontSizeManager;->DEBUG:Z

    if-eqz v16, :cond_2

    .line 186
    iget v0, v5, Landroid/content/res/Configuration;->fontsize:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->findFontSize(I)Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

    move-result-object v3

    .line 188
    .local v3, before:Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setFontSize():before:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n - fontsize: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v5, Landroid/content/res/Configuration;->fontsize:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " ("

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->name()Ljava/lang/String;

    move-result-object v16

    :goto_0
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, ")"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n - fontScale: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v5, Landroid/content/res/Configuration;->fontScale:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/settings/framework/core/display/HtcFontSizeManager;->log(Ljava/lang/String;)V

    .line 199
    .end local v3           #before:Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->getHtcFontSize()I

    move-result v15

    .line 200
    .local v15, value:I
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 201
    .local v10, fontSizeMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Float;>;"
    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const v17, 0x3f59999a

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/high16 v17, 0x3f80

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const/16 v16, 0x4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const v17, 0x3f933333

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const/16 v16, 0x5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const v17, 0x3fa66666

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const/16 v16, 0x6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const v17, 0x3fb9999a

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 209
    .local v4, conf:Landroid/content/res/Configuration;
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    .line 211
    .local v6, customizeValue:Ljava/lang/Float;
    if-nez v6, :cond_4

    .line 213
    sget-boolean v16, Lcom/android/settings/framework/core/display/HtcFontSizeManager;->DEBUG:Z

    if-eqz v16, :cond_3

    .line 214
    const-string v16, "Customize font size not found, set it as medium"

    invoke-static/range {v16 .. v16}, Lcom/android/settings/framework/core/display/HtcFontSizeManager;->log(Ljava/lang/String;)V

    .line 216
    :cond_3
    const/high16 v16, 0x3f80

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 219
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v16

    const v17, 0x3fb9999a

    cmpl-float v16, v16, v17

    if-nez v16, :cond_8

    .line 223
    const v16, 0x3fa66666

    move/from16 v0, v16

    iput v0, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 224
    const v13, 0x3fb9999a

    .line 240
    .local v13, specific_fontscale:F
    :goto_1
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v13, v1}, Landroid/content/res/HtcConfiguration;->setHtcFontscale(Landroid/content/Context;FF)Z

    .line 241
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 242
    invoke-interface {v2, v4}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    if-eqz v14, :cond_5

    .line 259
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "htc_font_size"

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v18

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 263
    new-instance v11, Landroid/content/Intent;

    const-string v16, "com.htc.intent.action.FONT_SIZE_CHANGED"

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v11, intent:Landroid/content/Intent;
    const-string v16, "com.htc.intent.extra.FONT_SIZE_CHANGED_FROM"

    const-string v17, "0"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string v16, "com.htc.permission.APP_PLATFORM"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 269
    .end local v11           #intent:Landroid/content/Intent;
    :cond_5
    :goto_2
    sget-boolean v16, Lcom/android/settings/framework/core/display/HtcFontSizeManager;->DEBUG:Z

    if-eqz v16, :cond_6

    .line 270
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setFontSize():after:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n - fontsize: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v5, Landroid/content/res/Configuration;->fontsize:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->name()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n - fontScale: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v5, Landroid/content/res/Configuration;->fontScale:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n - successful: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/settings/framework/core/display/HtcFontSizeManager;->log(Ljava/lang/String;)V

    .line 281
    :cond_6
    return v14

    .line 188
    .end local v4           #conf:Landroid/content/res/Configuration;
    .end local v6           #customizeValue:Ljava/lang/Float;
    .end local v10           #fontSizeMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Float;>;"
    .end local v13           #specific_fontscale:F
    .end local v15           #value:I
    .restart local v3       #before:Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;
    :cond_7
    const-string v16, "invalid"

    goto/16 :goto_0

    .line 225
    .end local v3           #before:Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;
    .restart local v4       #conf:Landroid/content/res/Configuration;
    .restart local v6       #customizeValue:Ljava/lang/Float;
    .restart local v10       #fontSizeMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Float;>;"
    .restart local v15       #value:I
    :cond_8
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v16

    const v17, 0x3fa66666

    cmpl-float v16, v16, v17

    if-nez v16, :cond_9

    .line 229
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v16

    move/from16 v0, v16

    iput v0, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 230
    const v13, 0x3fa66666

    .restart local v13       #specific_fontscale:F
    goto/16 :goto_1

    .line 235
    .end local v13           #specific_fontscale:F
    :cond_9
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v16

    move/from16 v0, v16

    iput v0, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 236
    const/4 v13, 0x0

    .restart local v13       #specific_fontscale:F
    goto/16 :goto_1

    .line 243
    :catch_0
    move-exception v8

    .line 244
    .local v8, ex1:Landroid/os/RemoteException;
    :try_start_1
    sget-object v16, Lcom/android/settings/framework/core/display/HtcFontSizeManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "1st RemoteException from updatePersistentConfiguration:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    const-wide/16 v16, 0x32

    :try_start_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 248
    invoke-interface {v2, v4}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 258
    :goto_3
    if-eqz v14, :cond_5

    .line 259
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "htc_font_size"

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v18

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 263
    new-instance v11, Landroid/content/Intent;

    const-string v16, "com.htc.intent.action.FONT_SIZE_CHANGED"

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .restart local v11       #intent:Landroid/content/Intent;
    const-string v16, "com.htc.intent.extra.FONT_SIZE_CHANGED_FROM"

    const-string v17, "0"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string v16, "com.htc.permission.APP_PLATFORM"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 249
    .end local v11           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v9

    .line 250
    .local v9, ex2:Landroid/os/RemoteException;
    :try_start_3
    sget-object v16, Lcom/android/settings/framework/core/display/HtcFontSizeManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "2nd RemoteException from updatePersistentConfiguration:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 252
    const/4 v14, 0x0

    .line 256
    goto :goto_3

    .line 253
    .end local v9           #ex2:Landroid/os/RemoteException;
    :catch_2
    move-exception v7

    .line 254
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 255
    const/4 v14, 0x0

    goto :goto_3

    .line 258
    .end local v7           #e:Ljava/lang/InterruptedException;
    .end local v8           #ex1:Landroid/os/RemoteException;
    :catchall_0
    move-exception v16

    if-eqz v14, :cond_a

    .line 259
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "htc_font_size"

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v19

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 263
    new-instance v11, Landroid/content/Intent;

    const-string v17, "com.htc.intent.action.FONT_SIZE_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .restart local v11       #intent:Landroid/content/Intent;
    const-string v17, "com.htc.intent.extra.FONT_SIZE_CHANGED_FROM"

    const-string v18, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string v17, "com.htc.permission.APP_PLATFORM"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 266
    .end local v11           #intent:Landroid/content/Intent;
    :cond_a
    throw v16
.end method

.method public static setFontSize(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "htcFontSizeName"

    .prologue
    .line 156
    invoke-static {p1}, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->findFontSize(Ljava/lang/String;)Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

    move-result-object v0

    .line 158
    .local v0, fontSize:Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;
    if-eqz v0, :cond_0

    .line 159
    invoke-static {p0, v0}, Lcom/android/settings/framework/core/display/HtcFontSizeManager;->setFontSize(Landroid/content/Context;Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;)Z

    move-result v1

    .line 161
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
