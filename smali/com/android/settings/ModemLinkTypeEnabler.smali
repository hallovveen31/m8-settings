.class public Lcom/android/settings/ModemLinkTypeEnabler;
.super Ljava/lang/Object;
.source "ModemLinkTypeEnabler.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# static fields
.field private static final SP_FILE:Ljava/lang/String; = "modem_link"

.field private static final SP_KEY:Ljava/lang/String; = "modemlink_type"

.field private static final TAG:Ljava/lang/String; = "ModemLinkType"

.field public static Type:I

.field private static mContext:Landroid/content/Context;

.field protected static mToggleMLType:Lcom/htc/preference/HtcPreference;


# instance fields
.field public click_listener:Landroid/content/DialogInterface$OnClickListener;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private sp:Landroid/content/SharedPreferences;

.field private type_choose:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/ModemLinkTypeEnabler;->Type:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/preference/HtcPreference;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ModemLinkTypeEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iput v2, p0, Lcom/android/settings/ModemLinkTypeEnabler;->type_choose:I

    new-instance v0, Lcom/android/settings/ModemLinkTypeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ModemLinkTypeEnabler$1;-><init>(Lcom/android/settings/ModemLinkTypeEnabler;)V

    iput-object v0, p0, Lcom/android/settings/ModemLinkTypeEnabler;->click_listener:Landroid/content/DialogInterface$OnClickListener;

    const-string v0, "ModemLinkType"

    const-string v1, "ModemLinkTypeEnabler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p2, Lcom/android/settings/ModemLinkTypeEnabler;->mToggleMLType:Lcom/htc/preference/HtcPreference;

    sput-object p1, Lcom/android/settings/ModemLinkTypeEnabler;->mContext:Landroid/content/Context;

    const-string v0, "modem_link"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ModemLinkTypeEnabler;->sp:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/android/settings/ModemLinkTypeEnabler;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ModemLinkTypeEnabler;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static Get_Connection_Type(Landroid/content/Context;)I
    .locals 3

    const/4 v2, 0x0

    const-string v1, "modem_link"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "modemlink_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static Set_Connection_Type(Landroid/content/Context;I)V
    .locals 4

    const-string v2, "modem_link"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modemlink_type"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static Switch_Connection_Type(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/android/settings/ModemLinkTypeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/SmartNSUtility;->setMLEnabled(ZLandroid/content/Context;)V

    sget-object v0, Lcom/android/settings/ModemLinkTypeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/SmartNSUtility;->setDiagEnabled(ZLandroid/content/Context;)V

    invoke-static {p0}, Lcom/android/settings/SmartNSUtility;->setMLInterface(I)V

    sget-object v0, Lcom/android/settings/ModemLinkTypeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/settings/SmartNSUtility;->setMLEnabled(ZLandroid/content/Context;)V

    sget-object v0, Lcom/android/settings/ModemLinkTypeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/settings/SmartNSUtility;->setDiagEnabled(ZLandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ModemLinkTypeEnabler;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/ModemLinkTypeEnabler;->type_choose:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/ModemLinkTypeEnabler;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/ModemLinkTypeEnabler;->type_choose:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/ModemLinkTypeEnabler;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ModemLinkTypeEnabler;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ModemLinkTypeEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/ModemLinkTypeEnabler;->checkInterface()V

    return-void
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/settings/ModemLinkTypeEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkInterface()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/ModemLinkTypeEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "modemlink_type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/ModemLinkTypeEnabler;->Type:I

    sget v0, Lcom/android/settings/ModemLinkTypeEnabler;->Type:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/ModemLinkTypeEnabler;->mToggleMLType:Lcom/htc/preference/HtcPreference;

    const v1, 0x7f0c0539

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/settings/ModemLinkTypeEnabler;->mToggleMLType:Lcom/htc/preference/HtcPreference;

    const v1, 0x7f0c053a

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 6

    const/4 v5, 0x1

    const-string v0, "ModemLinkType"

    const-string v1, "click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    sget-object v1, Lcom/android/settings/ModemLinkTypeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0537

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/settings/ModemLinkTypeEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0539

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Lcom/android/settings/ModemLinkTypeEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c053a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget v2, Lcom/android/settings/ModemLinkTypeEnabler;->Type:I

    iget-object v3, p0, Lcom/android/settings/ModemLinkTypeEnabler;->click_listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0516

    new-instance v2, Lcom/android/settings/ModemLinkTypeEnabler$3;

    invoke-direct {v2, p0}, Lcom/android/settings/ModemLinkTypeEnabler$3;-><init>(Lcom/android/settings/ModemLinkTypeEnabler;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0517

    new-instance v2, Lcom/android/settings/ModemLinkTypeEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/ModemLinkTypeEnabler$2;-><init>(Lcom/android/settings/ModemLinkTypeEnabler;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ModemLinkTypeEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v0, p0, Lcom/android/settings/ModemLinkTypeEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return v5
.end method

.method public pause()V
    .locals 2

    sget-object v0, Lcom/android/settings/ModemLinkTypeEnabler;->mToggleMLType:Lcom/htc/preference/HtcPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    return-void
.end method

.method public resume()V
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lcom/android/settings/ModemLinkTypeEnabler;->mToggleMLType:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    sget-object v2, Lcom/android/settings/ModemLinkTypeEnabler;->mToggleMLType:Lcom/htc/preference/HtcPreference;

    sget-object v0, Lcom/android/settings/ModemLinkTypeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/SmartNSUtility;->isMLEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ModemLinkTypeEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v2, "modemlink_type"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/ModemLinkTypeEnabler;->Type:I

    const-string v0, "ModemLinkType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pc connection type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/ModemLinkTypeEnabler;->Type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/ModemLinkTypeEnabler;->checkInterface()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
