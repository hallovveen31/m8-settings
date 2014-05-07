.class public Lcom/android/settings/fpquicklaunch/HtcFingerPrintReceiver;
.super Lcom/android/settings/framework/content/HtcBroadcastReceiver;
.source "HtcFingerPrintReceiver.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final INTENT_FINGER_PRINT_REMOVED:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintReceiver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/content/HtcBroadcastReceiver;-><init>()V

    const-class v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintReceiver;->TAG:Ljava/lang/String;

    const-string v0, "com.htc.android.settings.FINGER_PRINT_REMOVED"

    iput-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintReceiver;->INTENT_FINGER_PRINT_REMOVED:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceiveInBackground(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V
    .locals 23

    sget-boolean v20, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintReceiver;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Intent: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    sget-boolean v20, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintReceiver;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "action is null"

    invoke-static/range {v20 .. v21}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v20, "com.htc.settings.ENTRY_DATA_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/android/settings/framework/activity/HtcEntryManager;->refresh(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string v20, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    const-string v20, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    const-string v20, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    :cond_4
    new-instance v17, Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$EventParams;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$EventParams;-><init>(Landroid/content/Intent;)V

    sget-boolean v20, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintReceiver;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "params: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$EventParams;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$EventParams;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->isPluginable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    invoke-static/range {p1 .. p1}, Lcom/android/settings/framework/activity/HtcEntryManager;->refresh(Landroid/content/Context;)V

    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/settings/framework/core/printing/HtcPrintingUtils;->getLastPrintingServiceSize()I

    move-result v7

    invoke-static/range {p1 .. p1}, Lcom/android/settings/framework/core/printing/HtcPrintingUtils;->getPrintingServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v4

    add-int v20, v7, v4

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    invoke-static/range {p1 .. p1}, Lcom/android/settings/framework/activity/HtcEntryManager;->refresh(Landroid/content/Context;)V

    :cond_7
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v16

    sget-boolean v20, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintReceiver;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Package name: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v15, -0x1

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getBasicApplications(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    :goto_3
    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v13, v0, :cond_c

    aget-object v20, v5, v13

    invoke-static/range {v20 .. v20}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    if-eqz v20, :cond_9

    move v15, v13

    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_a
    sget-boolean v20, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintReceiver;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onReceiveInBackground("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "): not plugin-able"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    if-eq v7, v4, :cond_7

    invoke-static {v4}, Lcom/android/settings/framework/core/printing/HtcPrintingUtils;->setLastPrintingServiceSize(I)V

    goto/16 :goto_2

    :cond_c
    const/16 v20, -0x1

    move/from16 v0, v20

    if-le v15, v0, :cond_14

    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getFingerAndSelectionMap(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_f

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_d
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportTargetServices(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_12

    move/from16 v0, v19

    if-lt v0, v15, :cond_e

    add-int/lit8 v19, v19, 0x1

    :cond_e
    :goto_5
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->newRecord(Landroid/content/Context;I)Z

    move-result v20

    if-eqz v20, :cond_d

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->saveSelection(Landroid/content/Context;II)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->saveQuickLaunchAppByPosition(Landroid/content/Context;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintReceiver;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Check point#1: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_6
    const-string v20, "com.monotype.android.font"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    const-string v20, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->setReloadFontStyle(Z)V

    :cond_10
    const-string v20, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->initializeFontStyle(Landroid/content/Context;)V

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->setReloadFontStyle(Z)V

    const/16 v20, -0x1

    invoke-static/range {v20 .. v20}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->getCurrentFontStyleIndex(I)I

    move-result v15

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v15, v0, :cond_1

    sget-boolean v20, Lcom/android/settings/fpquicklaunch/HtcFingerPrintReceiver;->DEBUG:Z

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintReceiver;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "Selected font style is removed, switch current font style to default font."

    invoke-static/range {v20 .. v21}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->applyFontStyle(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_12
    move/from16 v0, v19

    if-ne v15, v0, :cond_13

    const/16 v19, 0x0

    goto/16 :goto_5

    :cond_13
    move/from16 v0, v19

    if-le v0, v15, :cond_e

    add-int/lit8 v19, v19, -0x1

    goto/16 :goto_5

    :cond_14
    :try_start_2
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportTargetServices(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_f

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->removeCustomAppByPackage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :cond_15
    const-string v20, "com.htc.android.settings.FINGER_PRINT_REMOVED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    const-string v20, "finger_id"

    const/16 v21, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    new-instance v10, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;-><init>(Landroid/content/Context;)V

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->removeRecordById(I)Z

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->removeFingerSettings(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_16
    const-string v20, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->initializeFontStyle(Landroid/content/Context;)V

    const/16 v20, -0x1

    invoke-static/range {v20 .. v20}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->getCurrentFontStyleIndex(I)I

    move-result v15

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v15, v0, :cond_1

    sget-boolean v20, Lcom/android/settings/fpquicklaunch/HtcFingerPrintReceiver;->DEBUG:Z

    if-eqz v20, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintReceiver;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "Selected font style is not supported by current language, switch current font style to default font."

    invoke-static/range {v20 .. v21}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->applyFontStyle(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method
