.class final enum Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;
.super Ljava/lang/Enum;
.source "HtcTrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Tab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

.field public static final enum SYSTEM:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

.field public static final enum USER:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;


# instance fields
.field private final mCheckbox:Z

.field private final mLabel:I

.field private final mList:I

.field private final mTag:Ljava/lang/String;

.field private final mView:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const v5, 0x7f0900f2

    const v6, 0x7f090041

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 81
    new-instance v0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    const-string v1, "SYSTEM"

    const-string v3, "system"

    const v4, 0x7f0c127b

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    .line 87
    new-instance v8, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    const-string v9, "USER"

    const-string v11, "user"

    const v12, 0x7f0c127c

    move v10, v7

    move v13, v5

    move v14, v6

    move v15, v2

    invoke-direct/range {v8 .. v15}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v8, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "tag"
    .parameter "label"
    .parameter "view"
    .parameter "list"
    .parameter "checkbox"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput-object p3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    .line 102
    iput p4, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->mLabel:I

    .line 103
    iput p5, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->mView:I

    .line 105
    iput p6, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->mList:I

    .line 106
    iput-boolean p7, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->mCheckbox:Z

    .line 107
    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->mCheckbox:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;Lcom/android/org/conscrypt/TrustedCertificateStore;)Ljava/util/Set;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->getAliases(Lcom/android/org/conscrypt/TrustedCertificateStore;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->deleted(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->getButtonLabel(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->getButtonConfirmation(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;ZLcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->postOperationUpdate(ZLcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->mList:I

    return v0
.end method

.method private deleted(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/lang/String;)Z
    .locals 3
    .parameter "store"
    .parameter "alias"

    .prologue
    const/4 v0, 0x0

    .line 118
    sget-object v1, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$4;->$SwitchMap$com$android$settings$framework$activity$security$HtcTrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 124
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 120
    :pswitch_0
    invoke-virtual {p1, p2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 122
    :cond_0
    :pswitch_1
    return v0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getAliases(Lcom/android/org/conscrypt/TrustedCertificateStore;)Ljava/util/Set;
    .locals 2
    .parameter "store"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/org/conscrypt/TrustedCertificateStore;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    sget-object v0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$4;->$SwitchMap$com$android$settings$framework$activity$security$HtcTrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 115
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 111
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->allSystemAliases()Ljava/util/Set;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getButtonConfirmation(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)I
    .locals 2
    .parameter "certHolder"

    .prologue
    .line 139
    sget-object v0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$4;->$SwitchMap$com$android$settings$framework$activity$security$HtcTrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 148
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 141
    :pswitch_0
    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const v0, 0x7f0c1280

    .line 146
    :goto_0
    return v0

    .line 144
    :cond_0
    const v0, 0x7f0c1281

    goto :goto_0

    .line 146
    :pswitch_1
    const v0, 0x7f0c1282

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getButtonLabel(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)I
    .locals 2
    .parameter "certHolder"

    .prologue
    .line 127
    sget-object v0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$4;->$SwitchMap$com$android$settings$framework$activity$security$HtcTrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 136
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 129
    :pswitch_0
    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const v0, 0x7f0c127e

    .line 134
    :goto_0
    return v0

    .line 132
    :cond_0
    const v0, 0x7f0c127d

    goto :goto_0

    .line 134
    :pswitch_1
    const v0, 0x7f0c127f

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private postOperationUpdate(ZLcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)V
    .locals 1
    .parameter "ok"
    .parameter "certHolder"

    .prologue
    .line 151
    if-eqz p1, :cond_2

    .line 152
    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;
    invoke-static {p2}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->mCheckbox:Z

    if-eqz v0, :cond_1

    .line 153
    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p2}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p2, v0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->access$002(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;Z)Z

    .line 157
    :goto_1
    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-static {p2}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->access$200(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->notifyDataSetChanged()V

    .line 162
    :goto_2
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :cond_1
    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-static {p2}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->access$200(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;

    move-result-object v0

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->access$300(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 160
    :cond_2
    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-static {p2}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->access$200(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;

    move-result-object v0

    #calls: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->load()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;->access$400(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;)V

    goto :goto_2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;
    .locals 1
    .parameter "name"

    .prologue
    .line 80
    const-class v0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    invoke-virtual {v0}, [Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    return-object v0
.end method
