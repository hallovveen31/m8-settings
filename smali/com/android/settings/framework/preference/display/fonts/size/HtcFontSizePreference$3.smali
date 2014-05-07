.class Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;
.super Ljava/lang/Object;
.source "HtcFontSizePreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->onDialogClosed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 349
    iget-object v9, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #getter for: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$000(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 350
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 351
    .local v0, conf:Landroid/content/res/Configuration;
    const/4 v6, 0x0

    .line 352
    .local v6, specific_fontscale:F
    const/4 v7, 0x1

    .line 356
    .local v7, successful:Z
    const-wide/16 v9, 0x1f4

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 358
    iget-object v9, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    invoke-virtual {v9}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 359
    .local v8, value:F
    iget-object v9, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    invoke-virtual {v9}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->getValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, "1.45"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 363
    const v9, 0x3fa66666

    iput v9, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 364
    const v6, 0x3fb9999a

    .line 379
    :goto_0
    iget-object v9, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #getter for: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$000(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v6, v8}, Landroid/content/res/HtcConfiguration;->setHtcFontscale(Landroid/content/Context;FF)Z

    .line 380
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 381
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9, v0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 400
    if-eqz v7, :cond_2

    .line 402
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.htc.intent.action.FONT_SIZE_CHANGED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .local v4, intent:Landroid/content/Intent;
    const-string v9, "com.htc.intent.extra.FONT_SIZE_CHANGED_FROM"

    const-string v10, "0"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    iget-object v9, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    invoke-virtual {v9}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 408
    iget-object v9, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #calls: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->isExtraLargeToHuge(F)Z
    invoke-static {v9, v6}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$400(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;F)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #calls: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->isHugeToExtraLarge(F)Z
    invoke-static {v9, v6}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$500(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;F)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 410
    :cond_0
    iget-object v9, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #getter for: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$600(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 411
    invoke-static {}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$700()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 412
    invoke-static {}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$300()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Font scale not changed, need to restart activity by self."

    invoke-static {v9, v10}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_1
    iget-object v9, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #getter for: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$600(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    .line 415
    iget-object v9, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    invoke-virtual {v9}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #getter for: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$600(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .end local v8           #value:F
    :goto_1
    invoke-virtual {v9, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 420
    .end local v4           #intent:Landroid/content/Intent;
    :cond_2
    return-void

    .line 365
    .restart local v8       #value:F
    :cond_3
    :try_start_1
    iget-object v9, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    invoke-virtual {v9}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->getValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, "1.30"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 369
    iput v8, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 370
    const v6, 0x3fa66666

    goto/16 :goto_0

    .line 375
    :cond_4
    iput v8, v0, Landroid/content/res/Configuration;->fontScale:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 376
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 382
    .end local v8           #value:F
    :catch_0
    move-exception v2

    .line 383
    .local v2, ex1:Landroid/os/RemoteException;
    :try_start_2
    invoke-static {}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$300()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "1st RemoteException from updatePersistentConfiguration:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 386
    const-wide/16 v9, 0x32

    :try_start_3
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 387
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9, v0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 400
    :goto_2
    if-eqz v7, :cond_2

    .line 402
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.htc.intent.action.FONT_SIZE_CHANGED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v9, "com.htc.intent.extra.FONT_SIZE_CHANGED_FROM"

    const-string v10, "0"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    iget-object v9, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    invoke-virtual {v9}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 408
    iget-object v9, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #calls: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->isExtraLargeToHuge(F)Z
    invoke-static {v9, v6}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$400(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;F)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #calls: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->isHugeToExtraLarge(F)Z
    invoke-static {v9, v6}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$500(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;F)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 410
    :cond_5
    iget-object v9, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #getter for: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$600(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 411
    invoke-static {}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$700()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 412
    invoke-static {}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$300()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Font scale not changed, need to restart activity by self."

    invoke-static {v9, v10}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_6
    iget-object v9, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #getter for: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$600(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    .line 415
    iget-object v9, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    invoke-virtual {v9}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #getter for: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$600(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    goto/16 :goto_1

    .line 388
    .end local v4           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v3

    .line 389
    .local v3, ex2:Landroid/os/RemoteException;
    :try_start_4
    invoke-static {}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$300()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "2nd RemoteException from updatePersistentConfiguration:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 391
    const/4 v7, 0x0

    .line 395
    goto :goto_2

    .line 392
    .end local v3           #ex2:Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 393
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 394
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 396
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #ex1:Landroid/os/RemoteException;
    :catch_3
    move-exception v1

    .line 397
    .restart local v1       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 398
    const/4 v7, 0x0

    .line 400
    if-eqz v7, :cond_2

    .line 402
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.htc.intent.action.FONT_SIZE_CHANGED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v9, "com.htc.intent.extra.FONT_SIZE_CHANGED_FROM"

    const-string v10, "0"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    iget-object v9, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    invoke-virtual {v9}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 408
    iget-object v9, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #calls: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->isExtraLargeToHuge(F)Z
    invoke-static {v9, v6}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$400(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;F)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #calls: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->isHugeToExtraLarge(F)Z
    invoke-static {v9, v6}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$500(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;F)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 410
    :cond_7
    iget-object v9, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #getter for: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$600(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 411
    invoke-static {}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$700()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 412
    invoke-static {}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$300()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Font scale not changed, need to restart activity by self."

    invoke-static {v9, v10}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_8
    iget-object v9, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #getter for: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$600(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    .line 415
    iget-object v9, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    invoke-virtual {v9}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #getter for: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$600(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    goto/16 :goto_1

    .line 400
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v4           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v9

    if-eqz v7, :cond_b

    .line 402
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.htc.intent.action.FONT_SIZE_CHANGED"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v10, "com.htc.intent.extra.FONT_SIZE_CHANGED_FROM"

    const-string v11, "0"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    iget-object v10, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    invoke-virtual {v10}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {v10, v4, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 408
    iget-object v10, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #calls: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->isExtraLargeToHuge(F)Z
    invoke-static {v10, v6}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$400(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;F)Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #calls: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->isHugeToExtraLarge(F)Z
    invoke-static {v10, v6}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$500(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;F)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 410
    :cond_9
    iget-object v10, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #getter for: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$600(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)Landroid/app/Activity;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 411
    invoke-static {}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$700()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 412
    invoke-static {}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$300()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Font scale not changed, need to restart activity by self."

    invoke-static {v10, v11}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_a
    iget-object v10, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #getter for: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$600(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    .line 415
    iget-object v10, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    invoke-virtual {v10}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #getter for: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mActivity:Landroid/app/Activity;
    invoke-static {v11}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$600(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 400
    .end local v4           #intent:Landroid/content/Intent;
    :cond_b
    throw v9
.end method
