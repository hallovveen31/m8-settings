.class public Lcom/android/settings/framework/search/SettingQueryHandler;
.super Lcom/android/settings/framework/app/HtcInternalActivity;
.source "SettingQueryHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingQueryHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 10

    .prologue
    .line 37
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onStart()V

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SettingQueryHandler;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 41
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 43
    const-string v7, "query"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, index:Ljava/lang/String;
    const/4 v2, -0x1

    .line 45
    .local v2, idx:I
    const/4 v6, 0x0

    .line 48
    .local v6, size:I
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 53
    :goto_0
    sget-object v5, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    .line 55
    .local v5, searchTarget:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/search/SuggestionProvider$Target;>;"
    if-eqz v5, :cond_0

    .line 56
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 59
    :cond_0
    if-ltz v2, :cond_2

    if-ge v2, v6, :cond_2

    .line 60
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    invoke-virtual {v7}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/search/SettingQueryHandler;->startActivity(Landroid/content/Intent;)V

    .line 66
    .end local v2           #idx:I
    .end local v3           #index:Ljava/lang/String;
    .end local v5           #searchTarget:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/search/SuggestionProvider$Target;>;"
    .end local v6           #size:I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SettingQueryHandler;->finish()V

    .line 67
    return-void

    .line 49
    .restart local v2       #idx:I
    .restart local v3       #index:Ljava/lang/String;
    .restart local v6       #size:I
    :catch_0
    move-exception v1

    .line 50
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v7, "SettingQueryHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extra type is invalid. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v5       #searchTarget:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/search/SuggestionProvider$Target;>;"
    :cond_2
    const-string v7, "SettingQueryHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid index:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
