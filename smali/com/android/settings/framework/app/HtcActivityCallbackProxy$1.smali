.class Lcom/android/settings/framework/app/HtcActivityCallbackProxy$1;
.super Ljava/lang/Object;
.source "HtcActivityCallbackProxy.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/app/HtcActivityCallbackProxy;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/app/HtcActivityCallbackProxy;

.field final synthetic val$container:Lcom/htc/preference/HtcPreferenceGroup;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$preferenceCallback:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/app/HtcActivityCallbackProxy;Ljava/lang/Class;Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy$1;->this$0:Lcom/android/settings/framework/app/HtcActivityCallbackProxy;

    iput-object p2, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy$1;->val$preferenceCallback:Ljava/lang/Class;

    iput-object p3, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy$1;->val$container:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCallbackInstance()Ljava/lang/Object;
    .locals 8

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy$1;->val$preferenceCallback:Ljava/lang/Class;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy$1;->val$context:Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreference;

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy$1;->val$container:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n - error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n - PID/TID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n - container: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy$1;->val$container:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n - preference: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy$1;->val$preferenceCallback:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/framework/app/HtcActivityCallbackProxy;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getCallbackInstanceType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityCallbackProxy$1;->val$preferenceCallback:Ljava/lang/Class;

    return-object v0
.end method
