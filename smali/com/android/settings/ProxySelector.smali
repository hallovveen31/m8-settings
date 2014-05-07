.class public Lcom/android/settings/ProxySelector;
.super Landroid/app/Fragment;
.source "ProxySelector.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;


# static fields
.field private static final ERROR_DIALOG_ID:I = 0x0

.field private static final EXCLUSION_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final EXCLUSION_REGEXP:Ljava/lang/String; = "$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

.field private static final HOSTNAME_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final HOSTNAME_REGEXP:Ljava/lang/String; = "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

.field private static final TAG:Ljava/lang/String; = "ProxySelector"


# instance fields
.field mClearButton:Landroid/widget/Button;

.field mClearHandler:Landroid/view/View$OnClickListener;

.field mDefaultButton:Landroid/widget/Button;

.field mDefaultHandler:Landroid/view/View$OnClickListener;

.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field mExclusionListField:Landroid/widget/EditText;

.field mHostnameField:Landroid/widget/EditText;

.field mOKButton:Landroid/widget/Button;

.field mOKHandler:Landroid/view/View$OnClickListener;

.field mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

.field mPortField:Landroid/widget/EditText;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ProxySelector;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 72
    const-string v0, "$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ProxySelector;->EXCLUSION_PATTERN:Ljava/util/regex/Pattern;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 273
    new-instance v0, Lcom/android/settings/ProxySelector$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ProxySelector$1;-><init>(Lcom/android/settings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mOKHandler:Landroid/view/View$OnClickListener;

    .line 281
    new-instance v0, Lcom/android/settings/ProxySelector$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ProxySelector$2;-><init>(Lcom/android/settings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mClearHandler:Landroid/view/View$OnClickListener;

    .line 289
    new-instance v0, Lcom/android/settings/ProxySelector$3;

    invoke-direct {v0, p0}, Lcom/android/settings/ProxySelector$3;-><init>(Lcom/android/settings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mDefaultHandler:Landroid/view/View$OnClickListener;

    .line 296
    new-instance v0, Lcom/android/settings/ProxySelector$4;

    invoke-direct {v0, p0}, Lcom/android/settings/ProxySelector$4;-><init>(Lcom/android/settings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 139
    const v0, 0x7f09019e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    .line 140
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 142
    const v0, 0x7f09019f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    .line 143
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mOKHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 146
    const v0, 0x7f0901a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    .line 147
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 149
    const v0, 0x7f0901a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mOKButton:Landroid/widget/Button;

    .line 150
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mOKButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mOKHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v0, 0x7f0901a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mClearButton:Landroid/widget/Button;

    .line 153
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mClearButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mClearHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v0, 0x7f0901a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mDefaultButton:Landroid/widget/Button;

    .line 156
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mDefaultButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mDefaultHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    return-void
.end method

.method private showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "ProxySelector"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 135
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public static validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .parameter "hostname"
    .parameter "port"
    .parameter "exclList"

    .prologue
    const v9, 0x7f0c0bee

    .line 204
    sget-object v10, Lcom/android/settings/ProxySelector;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 205
    .local v7, match:Ljava/util/regex/Matcher;
    const-string v10, ","

    invoke-virtual {p2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, exclListArray:[Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_1

    const v9, 0x7f0c0bea

    .line 232
    :cond_0
    :goto_0
    return v9

    .line 209
    :cond_1
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 210
    .local v2, excl:Ljava/lang/String;
    sget-object v10, Lcom/android/settings/ProxySelector;->EXCLUSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 211
    .local v6, m:Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_2

    const v9, 0x7f0c0beb

    goto :goto_0

    .line 209
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 214
    .end local v2           #excl:Ljava/lang/String;
    .end local v6           #m:Ljava/util/regex/Matcher;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    .line 215
    const v9, 0x7f0c0bec

    goto :goto_0

    .line 218
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_6

    .line 219
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_5

    .line 220
    const v9, 0x7f0c0bed

    goto :goto_0

    .line 222
    :cond_5
    const/4 v8, -0x1

    .line 224
    .local v8, portVal:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 228
    if-lez v8, :cond_0

    const v10, 0xffff

    if-gt v8, v10, :cond_0

    .line 232
    .end local v8           #portVal:I
    :cond_6
    const/4 v9, 0x0

    goto :goto_0

    .line 225
    .restart local v8       #portVal:I
    :catch_0
    move-exception v1

    .line 226
    .local v1, ex:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 101
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 103
    .local v1, userSetGlobalProxy:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 104
    iget-object v2, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 105
    iget-object v2, p0, Lcom/android/settings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 106
    iget-object v2, p0, Lcom/android/settings/ProxySelector;->mOKButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 107
    iget-object v2, p0, Lcom/android/settings/ProxySelector;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    iget-object v2, p0, Lcom/android/settings/ProxySelector;->mDefaultButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 109
    return-void

    .line 101
    .end local v1           #userSetGlobalProxy:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 115
    if-nez p1, :cond_0

    .line 116
    iget-object v5, p0, Lcom/android/settings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, hostname:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, portStr:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, exclList:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v1, v3, v0}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, msg:Ljava/lang/String;
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c0be8

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c0be9

    invoke-virtual {v5, v6, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    .line 127
    .end local v0           #exclList:Ljava/lang/String;
    .end local v1           #hostname:Ljava/lang/String;
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #portStr:Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 88
    const v0, 0x7f0400d7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mView:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/ProxySelector;->initView(Landroid/view/View;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->populateFields()V

    .line 92
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mView:Landroid/view/View;

    return-object v0
.end method

.method populateFields()V
    .locals 12

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 161
    .local v0, activity:Landroid/app/Activity;
    const-string v4, ""

    .line 162
    .local v4, hostname:Ljava/lang/String;
    const/4 v6, -0x1

    .line 163
    .local v6, port:I
    const-string v3, ""

    .line 165
    .local v3, exclList:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 168
    .local v2, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getGlobalProxy()Landroid/net/ProxyProperties;

    move-result-object v8

    .line 169
    .local v8, proxy:Landroid/net/ProxyProperties;
    if-eqz v8, :cond_0

    .line 170
    invoke-virtual {v8}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-virtual {v8}, Landroid/net/ProxyProperties;->getPort()I

    move-result v6

    .line 172
    invoke-virtual {v8}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v3

    .line 175
    :cond_0
    if-nez v4, :cond_1

    .line 176
    const-string v4, ""

    .line 179
    :cond_1
    iget-object v10, p0, Lcom/android/settings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {v10, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    const/4 v10, -0x1

    if-ne v6, v10, :cond_4

    const-string v7, ""

    .line 182
    .local v7, portStr:Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v10, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v10, p0, Lcom/android/settings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    invoke-virtual {v10, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 188
    .local v5, intent:Landroid/content/Intent;
    const-string v10, "button-label"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, buttonLabel:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 190
    iget-object v10, p0, Lcom/android/settings/ProxySelector;->mOKButton:Landroid/widget/Button;

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :cond_2
    const-string v10, "title"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 194
    .local v9, title:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 195
    invoke-virtual {v0, v9}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 197
    :cond_3
    return-void

    .line 181
    .end local v1           #buttonLabel:Ljava/lang/String;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #portStr:Ljava/lang/String;
    .end local v9           #title:Ljava/lang/String;
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method saveToDb()Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 240
    iget-object v9, p0, Lcom/android/settings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, hostname:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 242
    .local v6, portStr:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, exclList:Ljava/lang/String;
    const/4 v5, 0x0

    .line 245
    .local v5, port:I
    invoke-static {v3, v6, v2}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 246
    .local v7, result:I
    if-lez v7, :cond_0

    .line 247
    invoke-direct {p0, v8}, Lcom/android/settings/ProxySelector;->showDialog(I)V

    .line 270
    :goto_0
    return v8

    .line 251
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 253
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 259
    :cond_1
    new-instance v4, Landroid/net/ProxyProperties;

    invoke-direct {v4, v3, v5, v2}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 266
    .local v4, p:Landroid/net/ProxyProperties;
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 269
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyProperties;)V

    .line 270
    const/4 v8, 0x1

    goto :goto_0

    .line 254
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v4           #p:Landroid/net/ProxyProperties;
    :catch_0
    move-exception v1

    .line 256
    .local v1, ex:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method