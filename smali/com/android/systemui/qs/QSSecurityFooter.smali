.class public Lcom/android/systemui/qs/QSSecurityFooter;
.super Ljava/lang/Object;
.source "QSSecurityFooter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSSecurityFooter$1;,
        Lcom/android/systemui/qs/QSSecurityFooter$2;,
        Lcom/android/systemui/qs/QSSecurityFooter$Callback;,
        Lcom/android/systemui/qs/QSSecurityFooter$H;,
        Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mDivider:Landroid/view/View;

.field private final mFooterIcon:Landroid/widget/ImageView;

.field private mFooterIconId:I

.field private final mFooterText:Landroid/widget/TextView;

.field private mFooterTextContent:Ljava/lang/CharSequence;

.field protected mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mIsVisible:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private final mRootView:Landroid/view/View;

.field private final mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mUpdateDisplayState:Ljava/lang/Runnable;

.field private final mUpdateIcon:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSSecurityFooter;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDivider:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/QSSecurityFooter;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .prologue
    iget v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/widget/TextView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/QSSecurityFooter;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/QSSecurityFooter;)Lcom/android/systemui/qs/QSTileHost;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/qs/QSSecurityFooter;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mIsVisible:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->handleClick()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->handleRefreshState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-string/jumbo v0, "QSSecurityFooter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSSecurityFooter;->DEBUG:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Context;)V
    .locals 4
    .param p1, "qsPanel"    # Lcom/android/systemui/qs/QSPanel;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$Callback;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Lcom/android/systemui/qs/QSSecurityFooter$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    .line 66
    iput-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    .line 391
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$1;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateIcon:Ljava/lang/Runnable;

    .line 398
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$2;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateDisplayState:Ljava/lang/Runnable;

    .line 71
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 72
    const v2, 0x7f0d00e6

    const/4 v3, 0x0

    .line 71
    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    const v2, 0x7f0a00e3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    const v2, 0x7f0a00e2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIcon:Landroid/widget/ImageView;

    .line 76
    const v0, 0x7f08011d

    iput v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    .line 77
    iput-object p2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    .line 79
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 80
    const-class v0, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityController;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 81
    new-instance v2, Lcom/android/systemui/qs/QSSecurityFooter$H;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$H;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Landroid/os/Looper;Lcom/android/systemui/qs/QSSecurityFooter$H;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    .line 82
    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDivider:Landroid/view/View;

    .line 83
    return-void

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getDivider()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private createDialog()V
    .locals 25

    .prologue
    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/systemui/statusbar/policy/SecurityController;->isDeviceManaged()Z

    move-result v12

    .line 243
    .local v12, "isDeviceManaged":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasWorkProfile()Z

    move-result v11

    .line 245
    .local v11, "hasWorkProfile":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v7

    .line 246
    .local v7, "deviceOwnerOrganization":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInCurrentUser()Z

    move-result v9

    .line 247
    .local v9, "hasCACerts":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInWorkProfile()Z

    move-result v10

    .line 248
    .local v10, "hasCACertsInWorkProfile":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/systemui/statusbar/policy/SecurityController;->isNetworkLoggingEnabled()Z

    move-result v13

    .line 249
    .local v13, "isNetworkLoggingEnabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/systemui/statusbar/policy/SecurityController;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v18

    .line 250
    .local v18, "vpnName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileVpnName()Ljava/lang/String;

    move-result-object v19

    .line 252
    .local v19, "vpnNameWorkProfile":Ljava/lang/String;
    new-instance v21, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v21

    .line 255
    const v22, 0x7f0d00e7

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 254
    invoke-virtual/range {v21 .. v24}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 256
    .local v8, "dialogView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v21, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSSecurityFooter;->getPositiveButton()Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 260
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v7}, Lcom/android/systemui/qs/QSSecurityFooter;->getManagementMessage(ZLjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 262
    .local v14, "managementMessage":Ljava/lang/CharSequence;
    if-nez v14, :cond_0

    .line 263
    const v21, 0x7f0a00b5

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 273
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v9, v10}, Lcom/android/systemui/qs/QSSecurityFooter;->getCaCertsMessage(ZZZ)Ljava/lang/CharSequence;

    move-result-object v4

    .line 275
    .local v4, "caCertsMessage":Ljava/lang/CharSequence;
    if-nez v4, :cond_1

    .line 276
    const v21, 0x7f0a006b

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 286
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/qs/QSSecurityFooter;->getNetworkLoggingMessage(Z)Ljava/lang/CharSequence;

    move-result-object v15

    .line 287
    .local v15, "networkLoggingMessage":Ljava/lang/CharSequence;
    if-nez v15, :cond_2

    .line 288
    const v21, 0x7f0a01d2

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 297
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v12, v11, v1, v2}, Lcom/android/systemui/qs/QSSecurityFooter;->getVpnMessage(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v17

    .line 299
    .local v17, "vpnMessage":Ljava/lang/CharSequence;
    if-nez v17, :cond_3

    .line 300
    const v21, 0x7f0a02ee

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 309
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog;->show()V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v21

    const/16 v22, -0x1

    .line 311
    const/16 v23, -0x2

    .line 310
    invoke-virtual/range {v21 .. v23}, Landroid/view/Window;->setLayout(II)V

    .line 312
    return-void

    .line 265
    .end local v4    # "caCertsMessage":Ljava/lang/CharSequence;
    .end local v15    # "networkLoggingMessage":Ljava/lang/CharSequence;
    .end local v17    # "vpnMessage":Ljava/lang/CharSequence;
    :cond_0
    const v21, 0x7f0a00b5

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 267
    const v21, 0x7f0a00b7

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 268
    .local v6, "deviceManagementWarning":Landroid/widget/TextView;
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v21, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSSecurityFooter;->getSettingsButton()Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x2

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 278
    .end local v6    # "deviceManagementWarning":Landroid/widget/TextView;
    .restart local v4    # "caCertsMessage":Ljava/lang/CharSequence;
    :cond_1
    const v21, 0x7f0a006b

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 279
    const v21, 0x7f0a006d

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 280
    .local v5, "caCertsWarning":Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    new-instance v21, Landroid/text/method/LinkMovementMethod;

    invoke-direct/range {v21 .. v21}, Landroid/text/method/LinkMovementMethod;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_1

    .line 290
    .end local v5    # "caCertsWarning":Landroid/widget/TextView;
    .restart local v15    # "networkLoggingMessage":Ljava/lang/CharSequence;
    :cond_2
    const v21, 0x7f0a01d2

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 292
    const v21, 0x7f0a01d4

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 293
    .local v16, "networkLoggingWarning":Landroid/widget/TextView;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 302
    .end local v16    # "networkLoggingWarning":Landroid/widget/TextView;
    .restart local v17    # "vpnMessage":Ljava/lang/CharSequence;
    :cond_3
    const v21, 0x7f0a02ee

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 303
    const v21, 0x7f0a02f0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 304
    .local v20, "vpnWarning":Landroid/widget/TextView;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    new-instance v21, Landroid/text/method/LinkMovementMethod;

    invoke-direct/range {v21 .. v21}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_3
.end method

.method private getPositiveButton()Ljava/lang/String;
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1103f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSettingsButton()Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f110327

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleClick()V
    .locals 0

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->showDeviceMonitoringDialog()V

    .line 123
    return-void
.end method

.method private handleRefreshState()V
    .locals 12

    .prologue
    const/4 v0, 0x1

    .line 136
    iget-object v11, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v11}, Lcom/android/systemui/statusbar/policy/SecurityController;->isDeviceManaged()Z

    move-result v1

    .line 137
    .local v1, "isDeviceManaged":Z
    iget-object v11, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v11}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasWorkProfile()Z

    move-result v2

    .line 138
    .local v2, "hasWorkProfile":Z
    iget-object v11, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v11}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInCurrentUser()Z

    move-result v3

    .line 139
    .local v3, "hasCACerts":Z
    iget-object v11, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v11}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInWorkProfile()Z

    move-result v4

    .line 140
    .local v4, "hasCACertsInWorkProfile":Z
    iget-object v11, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v11}, Lcom/android/systemui/statusbar/policy/SecurityController;->isNetworkLoggingEnabled()Z

    move-result v5

    .line 141
    .local v5, "isNetworkLoggingEnabled":Z
    iget-object v11, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v11}, Lcom/android/systemui/statusbar/policy/SecurityController;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v6

    .line 142
    .local v6, "vpnName":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v11}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileVpnName()Ljava/lang/String;

    move-result-object v7

    .line 143
    .local v7, "vpnNameWorkProfile":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v11}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v8

    .line 144
    .local v8, "organizationName":Ljava/lang/CharSequence;
    iget-object v11, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v11}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileOrganizationName()Ljava/lang/CharSequence;

    move-result-object v9

    .line 146
    .local v9, "workProfileName":Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    .line 147
    if-eqz v6, :cond_3

    .line 146
    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mIsVisible:Z

    move-object v0, p0

    .line 149
    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/qs/QSSecurityFooter;->getFooterText(ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    .line 153
    if-nez v6, :cond_1

    if-eqz v7, :cond_4

    .line 154
    :cond_1
    const v10, 0x7f0801d9

    .line 156
    .local v10, "footerIconId":I
    :goto_1
    iget v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    if-eq v0, v10, :cond_2

    .line 157
    iput v10, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    .line 158
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateIcon:Ljava/lang/Runnable;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateDisplayState:Ljava/lang/Runnable;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    return-void

    .line 147
    .end local v10    # "footerIconId":I
    :cond_3
    if-nez v7, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :cond_4
    const v10, 0x7f08011d

    .restart local v10    # "footerIconId":I
    goto :goto_1
.end method


# virtual methods
.method protected getCaCertsMessage(ZZZ)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "isDeviceManaged"    # Z
    .param p2, "hasCACerts"    # Z
    .param p3, "hasCACertsInWorkProfile"    # Z

    .prologue
    .line 333
    if-nez p2, :cond_0

    move v0, p3

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 334
    :cond_1
    if-eqz p1, :cond_2

    .line 335
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f110338

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 337
    :cond_2
    if-eqz p3, :cond_3

    .line 338
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 339
    const v1, 0x7f110335

    .line 338
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 341
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f11032e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFooterText(ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "isDeviceManaged"    # Z
    .param p2, "hasWorkProfile"    # Z
    .param p3, "hasCACerts"    # Z
    .param p4, "hasCACertsInWorkProfile"    # Z
    .param p5, "isNetworkLoggingEnabled"    # Z
    .param p6, "vpnName"    # Ljava/lang/String;
    .param p7, "vpnNameWorkProfile"    # Ljava/lang/String;
    .param p8, "organizationName"    # Ljava/lang/CharSequence;
    .param p9, "workProfileName"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 167
    if-eqz p1, :cond_b

    .line 168
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    if-eqz p5, :cond_2

    .line 169
    :cond_0
    if-nez p8, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 171
    const v1, 0x7f1103e0

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    .line 175
    aput-object p8, v1, v2

    .line 174
    const v2, 0x7f1103e6

    .line 173
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 177
    :cond_2
    if-eqz p6, :cond_4

    if-eqz p7, :cond_4

    .line 178
    if-nez p8, :cond_3

    .line 179
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1103e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    .line 182
    aput-object p8, v1, v2

    .line 181
    const v2, 0x7f1103e8

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 184
    :cond_4
    if-nez p6, :cond_5

    if-eqz p7, :cond_9

    .line 185
    :cond_5
    if-nez p8, :cond_7

    .line 186
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    .line 188
    if-eqz p6, :cond_6

    .end local p6    # "vpnName":Ljava/lang/String;
    :goto_0
    aput-object p6, v1, v2

    .line 187
    const v2, 0x7f1103e1

    .line 186
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .restart local p6    # "vpnName":Ljava/lang/String;
    :cond_6
    move-object p6, p7

    .line 188
    goto :goto_0

    .line 190
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 192
    aput-object p8, v1, v2

    .line 193
    if-eqz p6, :cond_8

    .end local p6    # "vpnName":Ljava/lang/String;
    :goto_1
    aput-object p6, v1, v3

    .line 191
    const v2, 0x7f1103e7

    .line 190
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .restart local p6    # "vpnName":Ljava/lang/String;
    :cond_8
    move-object p6, p7

    .line 193
    goto :goto_1

    .line 195
    :cond_9
    if-nez p8, :cond_a

    .line 196
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1103df

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 198
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    .line 199
    aput-object p8, v1, v2

    .line 198
    const v2, 0x7f1103e5

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 201
    :cond_b
    if-eqz p4, :cond_d

    .line 202
    if-nez p9, :cond_c

    .line 203
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 204
    const v1, 0x7f1103dd

    .line 203
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 206
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    .line 208
    aput-object p9, v1, v2

    .line 207
    const v2, 0x7f1103e4

    .line 206
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 210
    :cond_d
    if-eqz p3, :cond_e

    .line 211
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1103e3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 213
    :cond_e
    if-eqz p6, :cond_f

    if-eqz p7, :cond_f

    .line 214
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1103eb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 216
    :cond_f
    if-eqz p7, :cond_10

    .line 217
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    .line 218
    aput-object p7, v1, v2

    .line 217
    const v2, 0x7f1103de

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 220
    :cond_10
    if-eqz p6, :cond_12

    .line 221
    if-eqz p2, :cond_11

    .line 222
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    .line 224
    aput-object p6, v1, v2

    .line 223
    const v2, 0x7f1103ea

    .line 222
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 226
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    .line 227
    aput-object p6, v1, v2

    .line 226
    const v2, 0x7f1103e9

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 229
    :cond_12
    return-object v0
.end method

.method protected getManagementMessage(ZLjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "isDeviceManaged"    # Z
    .param p2, "organizationName"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 324
    if-nez p1, :cond_0

    return-object v0

    .line 325
    :cond_0
    if-eqz p2, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 327
    const/4 v2, 0x0

    aput-object p2, v1, v2

    const v2, 0x7f11033a

    .line 326
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f110337

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNetworkLoggingMessage(Z)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "isNetworkLoggingEnabled"    # Z

    .prologue
    .line 345
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f110339

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method protected getVpnMessage(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "isDeviceManaged"    # Z
    .param p2, "hasWorkProfile"    # Z
    .param p3, "vpnName"    # Ljava/lang/String;
    .param p4, "vpnNameWorkProfile"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f11033b

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 351
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-object v1

    .line 352
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 353
    .local v0, "message":Landroid/text/SpannableStringBuilder;
    if-eqz p1, :cond_3

    .line 354
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 355
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    .line 356
    aput-object p3, v2, v4

    aput-object p4, v2, v3

    .line 355
    const v3, 0x7f11033e

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 377
    .end local p3    # "vpnName":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v2, 0x7f110342

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 378
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v2, 0x7f110341

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 379
    new-instance v2, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    .line 378
    invoke-virtual {v0, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 380
    return-object v0

    .line 358
    .restart local p3    # "vpnName":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    .line 359
    if-eqz p3, :cond_2

    .end local p3    # "vpnName":Ljava/lang/String;
    :goto_1
    aput-object p3, v2, v4

    .line 358
    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .restart local p3    # "vpnName":Ljava/lang/String;
    :cond_2
    move-object p3, p4

    .line 359
    goto :goto_1

    .line 362
    :cond_3
    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    .line 363
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    .line 364
    aput-object p3, v2, v4

    aput-object p4, v2, v3

    .line 363
    const v3, 0x7f11033e

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 365
    :cond_4
    if-eqz p4, :cond_5

    .line 366
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    .line 368
    aput-object p4, v2, v4

    .line 367
    const v3, 0x7f110336

    .line 366
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 369
    :cond_5
    if-eqz p2, :cond_6

    .line 370
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    .line 371
    aput-object p3, v2, v4

    const v3, 0x7f11033d

    .line 370
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 373
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    .line 374
    aput-object p3, v2, v4

    .line 373
    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 234
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.ENTERPRISE_PRIVACY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 237
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 239
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$H;->sendEmptyMessage(I)Z

    .line 119
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    const v1, 0x7f07024c

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 106
    return-void
.end method

.method public refreshState()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$H;->sendEmptyMessage(I)Z

    .line 133
    return-void
.end method

.method public setHostEnvironment(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 102
    return-void
.end method

.method public showDeviceMonitoringDialog()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->collapsePanels()V

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->createDialog()V

    .line 129
    return-void
.end method
