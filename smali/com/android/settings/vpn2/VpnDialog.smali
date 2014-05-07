.class Lcom/android/settings/vpn2/VpnDialog;
.super Lcom/htc/widget/HtcAlertDialog;
.source "VpnDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/htc/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDnsServers:Landroid/widget/TextView;

.field private mEditing:Z

.field private mIpsecCaCert:Lcom/htc/widget/HtcSpinner;

.field private mIpsecIdentifier:Landroid/widget/TextView;

.field private mIpsecSecret:Landroid/widget/TextView;

.field private mIpsecServerCert:Lcom/htc/widget/HtcSpinner;

.field private mIpsecUserCert:Lcom/htc/widget/HtcSpinner;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mL2tpSecret:Landroid/widget/TextView;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMppe:Lcom/htc/widget/HtcCheckBox;

.field private mName:Landroid/widget/TextView;

.field private mPassword:Landroid/widget/TextView;

.field private final mProfile:Lcom/android/internal/net/VpnProfile;

.field private mRoutes:Landroid/widget/TextView;

.field private mSaveLogin:Lcom/htc/widget/HtcCheckBox;

.field private mSearchDomains:Landroid/widget/TextView;

.field private mServer:Landroid/widget/TextView;

.field private mShowOptions:Lcom/htc/widget/HtcCheckBox;

.field private mType:Lcom/htc/widget/HtcSpinner;

.field private mUsername:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "profile"
    .parameter "editing"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mKeyStore:Landroid/security/KeyStore;

    .line 79
    iput-object p1, p0, Lcom/android/settings/vpn2/VpnDialog;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/settings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 81
    iput-object p3, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 82
    iput-boolean p4, p0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    .line 83
    return-void
.end method

.method private changeType(I)V
    .locals 8
    .parameter "type"

    .prologue
    const v7, 0x7f090261

    const v6, 0x7f09025f

    const v5, 0x7f09025c

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 257
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v2, 0x7f090264

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v2, 0x7f090266

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 264
    packed-switch p1, :pswitch_data_0

    .line 291
    :goto_0
    return-void

    .line 266
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v2, 0x7f09025d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    .line 269
    .local v0, title:Lcom/htc/widget/HtcListItem2LineText;
    const v1, 0x7f0c125b

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 270
    const v1, 0x2030037

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 271
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_0

    .line 275
    .end local v0           #title:Lcom/htc/widget/HtcListItem2LineText;
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 278
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 282
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 285
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v2, 0x7f090264

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 288
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v2, 0x7f090266

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .parameter "spinner"
    .parameter "prefix"
    .parameter "firstId"
    .parameter "selected"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 347
    .local v3, context:Landroid/content/Context;
    if-nez p3, :cond_2

    const-string v4, ""

    .line 348
    .local v4, first:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/settings/vpn2/VpnDialog;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, certificates:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v6, v2

    if-nez v6, :cond_3

    .line 351
    :cond_0
    new-array v2, v8, [Ljava/lang/String;

    .end local v2           #certificates:[Ljava/lang/String;
    aput-object v4, v2, v7

    .line 359
    .restart local v2       #certificates:[Ljava/lang/String;
    :goto_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x2090008

    invoke-direct {v0, v3, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 361
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v6, 0x2090007

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 362
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 364
    const/4 v5, 0x1

    .local v5, i:I
    :goto_2
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 365
    aget-object v6, v2, v5

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 366
    invoke-virtual {p1, v5}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 370
    :cond_1
    return-void

    .line 347
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v2           #certificates:[Ljava/lang/String;
    .end local v4           #first:Ljava/lang/String;
    .end local v5           #i:I
    :cond_2
    invoke-virtual {v3, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 353
    .restart local v2       #certificates:[Ljava/lang/String;
    .restart local v4       #first:Ljava/lang/String;
    :cond_3
    array-length v6, v2

    add-int/lit8 v6, v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    .line 354
    .local v1, array:[Ljava/lang/String;
    aput-object v4, v1, v7

    .line 355
    array-length v6, v2

    invoke-static {v2, v7, v1, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    move-object v2, v1

    goto :goto_1

    .line 364
    .end local v1           #array:[Ljava/lang/String;
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v5       #i:I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private validate(Z)Z
    .locals 3
    .parameter "editing"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 294
    if-nez p1, :cond_2

    .line 295
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    move v0, v1

    .line 295
    goto :goto_0

    .line 297
    :cond_2
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/settings/vpn2/VpnDialog;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/settings/vpn2/VpnDialog;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 300
    goto :goto_0

    .line 302
    :cond_4
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->mType:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 315
    goto :goto_0

    .line 309
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 313
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecUserCert:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private validateAddresses(Ljava/lang/String;Z)Z
    .locals 11
    .parameter "addresses"
    .parameter "cidr"

    .prologue
    .line 320
    :try_start_0
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v0, v1, v4

    .line 321
    .local v0, address:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 320
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 325
    :cond_1
    const/16 v8, 0x20

    .line 326
    .local v8, prefixLength:I
    if-eqz p2, :cond_2

    .line 327
    const-string v9, "/"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 328
    .local v7, parts:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v0, v7, v9

    .line 329
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 331
    .end local v7           #parts:[Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 332
    .local v2, bytes:[B
    const/4 v9, 0x3

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x2

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    const/4 v10, 0x0

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    or-int v5, v9, v10

    .line 334
    .local v5, integer:I
    array-length v9, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    if-ltz v8, :cond_3

    const/16 v9, 0x20

    if-gt v8, v9, :cond_3

    const/16 v9, 0x20

    if-ge v8, v9, :cond_0

    shl-int v9, v5, v8

    if-eqz v9, :cond_0

    .line 336
    :cond_3
    const/4 v9, 0x0

    .line 342
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #bytes:[B
    .end local v4           #i$:I
    .end local v5           #integer:I
    .end local v6           #len$:I
    .end local v8           #prefixLength:I
    :goto_1
    return v9

    .line 339
    :catch_0
    move-exception v3

    .line 340
    .local v3, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_1

    .line 342
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    :cond_4
    const/4 v9, 0x1

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "field"

    .prologue
    .line 218
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/VpnDialog;->validate(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 219
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 223
    return-void
.end method

.method getProfile()Lcom/android/internal/net/VpnProfile;
    .locals 2

    .prologue
    .line 378
    new-instance v0, Lcom/android/internal/net/VpnProfile;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 379
    .local v0, profile:Lcom/android/internal/net/VpnProfile;
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 380
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mType:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 381
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 382
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 383
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 384
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mSearchDomains:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 385
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 386
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 389
    iget v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v1, :pswitch_data_0

    .line 420
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mSaveLogin:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v1}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 421
    return-object v0

    .line 391
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mMppe:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v1}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    goto :goto_0

    .line 395
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 398
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 399
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    goto :goto_0

    .line 403
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 406
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecUserCert:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecUserCert:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 411
    :cond_1
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecCaCert:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_2

    .line 412
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecCaCert:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 414
    :cond_2
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecServerCert:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecServerCert:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    goto :goto_0

    .line 389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method isEditing()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const v1, 0x7f090269

    .line 231
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mShowOptions:Lcom/htc/widget/HtcCheckBox;

    if-ne p1, v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 235
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mShowOptions:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->performClick()Z

    goto :goto_0

    .line 236
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09025c

    if-ne v0, v1, :cond_3

    .line 237
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mMppe:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->performClick()Z

    goto :goto_0

    .line 238
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090272

    if-ne v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mSaveLogin:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->performClick()Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedState"

    .prologue
    const v13, 0x2030037

    const/16 v12, 0x8

    const/4 v11, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 87
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 88
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040111

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    .line 89
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/android/settings/vpn2/VpnDialog;->setView(Landroid/view/View;)V

    .line 90
    invoke-virtual {p0, v7}, Lcom/android/settings/vpn2/VpnDialog;->setInverseBackgroundForced(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 95
    .local v1, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f090169

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    .line 96
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f09025a

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcSpinner;

    iput-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mType:Lcom/htc/widget/HtcSpinner;

    .line 97
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f09025b

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    .line 98
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f090270

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    .line 99
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f090271

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    .line 100
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f09026c

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mSearchDomains:Landroid/widget/TextView;

    .line 101
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f09026d

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    .line 102
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f09026e

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    .line 103
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f09025e

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcCheckBox;

    iput-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mMppe:Lcom/htc/widget/HtcCheckBox;

    .line 104
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f090260

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    .line 105
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f090262

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    .line 106
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f090263

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    .line 107
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f090265

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcSpinner;

    iput-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecUserCert:Lcom/htc/widget/HtcSpinner;

    .line 108
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f090267

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcSpinner;

    iput-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecCaCert:Lcom/htc/widget/HtcSpinner;

    .line 109
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f090268

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcSpinner;

    iput-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecServerCert:Lcom/htc/widget/HtcSpinner;

    .line 110
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f090274

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcCheckBox;

    iput-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mSaveLogin:Lcom/htc/widget/HtcCheckBox;

    .line 113
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x2090008

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08005c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v1, v5, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 116
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v5, 0x2090007

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 117
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mType:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 120
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v8, v8, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mType:Lcom/htc/widget/HtcSpinner;

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v8, v8, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 122
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v8, v8, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v5, v5, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v5, :cond_0

    .line 124
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v8, v8, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v8, v8, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_0
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mSearchDomains:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v8, v8, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v8, v8, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v8, v8, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mMppe:Lcom/htc/widget/HtcCheckBox;

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v8, v8, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 131
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v8, v8, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v8, v8, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v8, v8, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecUserCert:Lcom/htc/widget/HtcSpinner;

    const-string v8, "USRPKEY_"

    iget-object v9, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v9, v9, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-direct {p0, v5, v8, v6, v9}, Lcom/android/settings/vpn2/VpnDialog;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 136
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecCaCert:Lcom/htc/widget/HtcSpinner;

    const-string v8, "CACERT_"

    const v9, 0x7f0c126a

    iget-object v10, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v10, v10, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-direct {p0, v5, v8, v9, v10}, Lcom/android/settings/vpn2/VpnDialog;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 138
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecServerCert:Lcom/htc/widget/HtcSpinner;

    const-string v8, "USRCERT_"

    const v9, 0x7f0c126b

    iget-object v10, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v10, v10, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-direct {p0, v5, v8, v9, v10}, Lcom/android/settings/vpn2/VpnDialog;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 140
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mSaveLogin:Lcom/htc/widget/HtcCheckBox;

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v8, v8, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 143
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 144
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mType:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v5, p0}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/AdapterView$OnItemSelectedListener;)V

    .line 145
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 146
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 147
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 148
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 151
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mIpsecUserCert:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v5, p0}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/AdapterView$OnItemSelectedListener;)V

    .line 154
    invoke-direct {p0, v7}, Lcom/android/settings/vpn2/VpnDialog;->validate(Z)Z

    move-result v4

    .line 155
    .local v4, valid:Z
    iget-boolean v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    if-nez v5, :cond_1

    if-nez v4, :cond_2

    :cond_1
    move v5, v7

    :goto_0
    iput-boolean v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    .line 157
    iget-boolean v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    if-eqz v5, :cond_4

    .line 158
    const v5, 0x7f0c126f

    invoke-virtual {p0, v5}, Lcom/android/settings/vpn2/VpnDialog;->setTitle(I)V

    .line 161
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f090259

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v5, v5, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-direct {p0, v5}, Lcom/android/settings/vpn2/VpnDialog;->changeType(I)V

    .line 167
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f09026b

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcCheckBox;

    iput-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mShowOptions:Lcom/htc/widget/HtcCheckBox;

    .line 168
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 170
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mShowOptions:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v5, p0}, Lcom/htc/widget/HtcCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f090269

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f09026a

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 173
    .local v3, title:Lcom/htc/widget/HtcListItem2LineText;
    const v5, 0x7f0c1262

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 174
    invoke-virtual {v3, v13}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 175
    invoke-virtual {v3, v12}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 182
    .end local v3           #title:Lcom/htc/widget/HtcListItem2LineText;
    :goto_1
    const v5, 0x7f0c126d

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v11, v5, v7}, Lcom/android/settings/vpn2/VpnDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 201
    :goto_2
    const/4 v5, -0x2

    const v7, 0x7f0c126c

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v7, v8}, Lcom/android/settings/vpn2/VpnDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 205
    const/4 v5, 0x0

    invoke-super {p0, v5}, Lcom/htc/widget/HtcAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 208
    invoke-virtual {p0, v11}, Lcom/android/settings/vpn2/VpnDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    if-eqz v7, :cond_5

    .end local v4           #valid:Z
    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 214
    return-void

    .restart local v4       #valid:Z
    :cond_2
    move v5, v6

    .line 155
    goto/16 :goto_0

    .line 177
    :cond_3
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f090269

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f0900f8

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 185
    :cond_4
    const v5, 0x7f0c1270

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v8, v8, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    aput-object v8, v7, v6

    invoke-virtual {v1, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/vpn2/VpnDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f09026f

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f090272

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f090273

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 191
    .restart local v3       #title:Lcom/htc/widget/HtcListItem2LineText;
    const v5, 0x7f0c1268

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 192
    invoke-virtual {v3, v13}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 193
    invoke-virtual {v3, v12}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 196
    const v5, 0x7f0c126e

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v11, v5, v7}, Lcom/android/settings/vpn2/VpnDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 208
    .end local v3           #title:Lcom/htc/widget/HtcListItem2LineText;
    :cond_5
    invoke-direct {p0, v6}, Lcom/android/settings/vpn2/VpnDialog;->validate(Z)Z

    move-result v4

    goto :goto_3
.end method

.method public onItemSelected(Lcom/htc/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, parent:Lcom/htc/widget/AdapterView;,"Lcom/htc/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnDialog;->mType:Lcom/htc/widget/HtcSpinner;

    if-ne p1, v0, :cond_0

    .line 246
    invoke-direct {p0, p3}, Lcom/android/settings/vpn2/VpnDialog;->changeType(I)V

    .line 248
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/vpn2/VpnDialog;->mEditing:Z

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/VpnDialog;->validate(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 249
    return-void
.end method

.method public onNothingSelected(Lcom/htc/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, parent:Lcom/htc/widget/AdapterView;,"Lcom/htc/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 227
    return-void
.end method
