.class public Lcom/android/settings/NetSharingTypeEnabler;
.super Ljava/lang/Object;
.source "NetSharingTypeEnabler.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# static fields
.field protected static final SP_FILE:Ljava/lang/String; = "internet_sharing"

.field protected static final SP_KEY:Ljava/lang/String; = "is_type"

.field protected static final SP_MAC:Ljava/lang/String; = "mac"

.field protected static final SP_TYPE:Ljava/lang/String; = "net.usb0.isharing.host"

.field protected static final SP_WINDOW:Ljava/lang/String; = "win"

.field private static final TAG:Ljava/lang/String; = "NetSharingTypeEnabler"

.field public static Type:I = 0x0

.field protected static final UI_DISABLE:Ljava/lang/String; = "com.htc.android.ns.type.enable"

.field protected static final UI_ENABLE:Ljava/lang/String; = "com.htc.android.ns.type.disable"


# instance fields
.field private alive:Z

.field public click_listener:Landroid/content/DialogInterface$OnClickListener;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field protected mToggleISType:Lcom/htc/preference/HtcPreference;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/NetSharingTypeEnabler;->Type:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/preference/HtcPreference;)V
    .locals 3
    .parameter "context"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 36
    iput-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->mFilter:Landroid/content/IntentFilter;

    .line 41
    iput-boolean v2, p0, Lcom/android/settings/NetSharingTypeEnabler;->alive:Z

    .line 86
    new-instance v0, Lcom/android/settings/NetSharingTypeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/NetSharingTypeEnabler$1;-><init>(Lcom/android/settings/NetSharingTypeEnabler;)V

    iput-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->click_listener:Landroid/content/DialogInterface$OnClickListener;

    .line 153
    new-instance v0, Lcom/android/settings/NetSharingTypeEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/NetSharingTypeEnabler$3;-><init>(Lcom/android/settings/NetSharingTypeEnabler;)V

    iput-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 44
    const-string v0, "NetSharingTypeEnabler"

    const-string v1, "NetSharingTypeEnabler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iput-object p2, p0, Lcom/android/settings/NetSharingTypeEnabler;->mToggleISType:Lcom/htc/preference/HtcPreference;

    .line 46
    iput-object p1, p0, Lcom/android/settings/NetSharingTypeEnabler;->mContext:Landroid/content/Context;

    .line 48
    const-string v0, "internet_sharing"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->sp:Landroid/content/SharedPreferences;

    .line 49
    iget-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "is_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/NetSharingTypeEnabler;->Type:I

    .line 50
    iget-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->editor:Landroid/content/SharedPreferences$Editor;

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->mFilter:Landroid/content/IntentFilter;

    .line 53
    iget-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.android.ns.type.enable"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.android.ns.type.disable"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static Set_Connection_Type(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "type"

    .prologue
    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/NetSharingTypeEnabler;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/NetSharingTypeEnabler;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/NetSharingTypeEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected checkInterface(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 138
    const-string v0, "internet_sharing"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/NetSharingTypeEnabler;->Type:I

    .line 151
    return-void
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    .line 98
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/NetSharingTypeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0522

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/NetSharingTypeEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0524

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/android/settings/NetSharingTypeEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c052b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget v2, Lcom/android/settings/NetSharingTypeEnabler;->Type:I

    iget-object v3, p0, Lcom/android/settings/NetSharingTypeEnabler;->click_listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0517

    new-instance v2, Lcom/android/settings/NetSharingTypeEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/NetSharingTypeEnabler$2;-><init>(Lcom/android/settings/NetSharingTypeEnabler;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 105
    iget-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 106
    return v5
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 75
    iget-boolean v1, p0, Lcom/android/settings/NetSharingTypeEnabler;->alive:Z

    if-eqz v1, :cond_0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/NetSharingTypeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/NetSharingTypeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/NetSharingTypeEnabler;->alive:Z

    .line 83
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public resume()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    iput-boolean v1, p0, Lcom/android/settings/NetSharingTypeEnabler;->alive:Z

    .line 62
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/NetSharingTypeEnabler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/NetSharingTypeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/settings/NetSharingTypeEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v6, "com.htc.permission.APP_PLATFORM"

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    iget-object v3, p0, Lcom/android/settings/NetSharingTypeEnabler;->mToggleISType:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 67
    iget-object v3, p0, Lcom/android/settings/NetSharingTypeEnabler;->mToggleISType:Lcom/htc/preference/HtcPreference;

    iget-object v4, p0, Lcom/android/settings/NetSharingTypeEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v5, "isNSOpening"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_1
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 68
    iget-object v1, p0, Lcom/android/settings/NetSharingTypeEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v3, "is_type"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings/NetSharingTypeEnabler;->Type:I

    .line 69
    const-string v1, "NetSharingTypeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pc connection type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/NetSharingTypeEnabler;->Type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Lcom/android/settings/NetSharingTypeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/settings/NetSharingTypeEnabler;->checkInterface(Landroid/content/Context;)V

    .line 71
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    move v1, v2

    .line 67
    goto :goto_1
.end method
