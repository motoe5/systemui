.class Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
.super Ljava/lang/Object;
.source "SignalClusterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/SignalClusterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneState"
.end annotation


# instance fields
.field public mActivityIn:Z

.field public mActivityOut:Z

.field private mIsMobileTypeIconWide:Z

.field private mLastMobileStrengthId:I

.field private mLastMobileTypeId:I

.field private mMobile:Landroid/widget/ImageView;

.field private mMobileActivityIn:Landroid/widget/ImageView;

.field private mMobileActivityOut:Landroid/widget/ImageView;

.field private mMobileDark:Landroid/widget/ImageView;

.field private mMobileDataActivityIconId:I

.field private mMobileDataActivityView:Lcom/android/systemui/statusbar/AnimatedImageView;

.field private mMobileDescription:Ljava/lang/String;

.field private mMobileGroup:Landroid/view/ViewGroup;

.field private mMobileIsBidiDirectionEnabled:Z

.field private mMobileIsRoaming:Z

.field private mMobileRoaming:Landroid/widget/ImageView;

.field private mMobileRoamingIconId:I

.field private mMobileRoamingView:Lcom/android/systemui/statusbar/AnimatedImageView;

.field private mMobileStrengthId:I

.field private mMobileType:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:I

.field private mMobileUseMotoUI:Z

.field private mMobileVisible:Z

.field public mRoaming:Z

.field private final mSubId:I

.field private showSeparatedSignalBars:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/SignalClusterView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSubId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mIsMobileTypeIconWide:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    return p1
.end method

.method static synthetic -set10(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileUseMotoUI:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->showSeparatedSignalBars:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDataActivityIconId:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileIsBidiDirectionEnabled:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileIsRoaming:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoamingIconId:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    return p1
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/SignalClusterView;ILandroid/content/Context;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p2, "subId"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 829
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    .line 806
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    .line 807
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    .line 808
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->showSeparatedSignalBars:Z

    .line 809
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    .line 824
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoamingIconId:I

    .line 825
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDataActivityIconId:I

    .line 832
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 833
    const v2, 0x7f0d0090

    const/4 v3, 0x0

    .line 832
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 834
    .local v0, "root":Landroid/view/ViewGroup;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setViews(Landroid/view/ViewGroup;)V

    .line 835
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSubId:I

    .line 836
    return-void
.end method

.method private updateIconState(Landroid/widget/ImageView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "iconId"    # I

    .prologue
    const/4 v2, 0x0

    .line 939
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 940
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_1

    .line 941
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileIsBidiDirectionEnabled:Z

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 942
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 946
    :goto_0
    return-void

    .line 944
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public apply(Z)Z
    .locals 9
    .param p1, "isSecondaryIcon"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 858
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get0(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    .line 859
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    if-eq v2, v5, :cond_2

    .line 861
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->showSeparatedSignalBars:Z

    if-eqz v2, :cond_6

    .line 862
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v2, v5, v6}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap3(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 863
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDark:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v2, v5, v6}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap3(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 871
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 872
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 873
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileIsBidiDirectionEnabled:Z

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 875
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDark:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 876
    .local v1, "drawableDark":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 877
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileIsBidiDirectionEnabled:Z

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 880
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    .line 883
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "drawableDark":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-eq v2, v5, :cond_4

    .line 884
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 885
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    .line 887
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 888
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 889
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 891
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-eqz v2, :cond_7

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 896
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoamingView:Lcom/android/systemui/statusbar/AnimatedImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoamingIconId:I

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageResource(I)V

    .line 897
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoamingView:Lcom/android/systemui/statusbar/AnimatedImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoamingIconId:I

    invoke-direct {p0, v2, v5}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->updateIconState(Landroid/widget/ImageView;I)V

    .line 898
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDataActivityView:Lcom/android/systemui/statusbar/AnimatedImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDataActivityIconId:I

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageResource(I)V

    .line 899
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDataActivityView:Lcom/android/systemui/statusbar/AnimatedImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDataActivityIconId:I

    invoke-direct {p0, v2, v5}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->updateIconState(Landroid/widget/ImageView;I)V

    .line 902
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 903
    const-string/jumbo v6, " "

    .line 902
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 903
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDescription:Ljava/lang/String;

    .line 902
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 904
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 910
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz p1, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get2(Lcom/android/systemui/statusbar/SignalClusterView;)I

    move-result v2

    :goto_3
    invoke-virtual {v5, v2, v3, v3, v3}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 912
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    .line 913
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mIsMobileTypeIconWide:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get4(Lcom/android/systemui/statusbar/SignalClusterView;)I

    move-result v2

    .line 912
    :goto_4
    invoke-virtual {v5, v2, v3, v3, v3}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 915
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDark:Landroid/widget/ImageView;

    .line 916
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mIsMobileTypeIconWide:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get4(Lcom/android/systemui/statusbar/SignalClusterView;)I

    move-result v2

    .line 915
    :goto_5
    invoke-virtual {v5, v2, v3, v3, v3}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 919
    sget-boolean v2, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string/jumbo v5, "SignalClusterView"

    const-string/jumbo v6, "mobile: %s sig=%d typ=%d"

    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/Object;

    .line 920
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v2, :cond_c

    const-string/jumbo v2, "VISIBLE"

    :goto_6
    aput-object v2, v7, v3

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x1

    aput-object v2, v7, v8

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x2

    aput-object v2, v7, v8

    .line 919
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-eqz v2, :cond_d

    move v2, v3

    :goto_7
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 923
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoaming:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mRoaming:Z

    if-eqz v2, :cond_e

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileUseMotoUI:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_e

    move v2, v3

    :goto_8
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 924
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityIn:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityIn:Z

    if-eqz v2, :cond_f

    move v2, v3

    :goto_9
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 925
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityOut:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityOut:Z

    if-eqz v5, :cond_10

    :goto_a
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 927
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    return v2

    .line 865
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 866
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDark:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto/16 :goto_0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    move v2, v4

    .line 891
    goto/16 :goto_1

    .line 906
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    move v2, v3

    .line 910
    goto/16 :goto_3

    .line 913
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get1(Lcom/android/systemui/statusbar/SignalClusterView;)I

    move-result v2

    goto/16 :goto_4

    .line 916
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get1(Lcom/android/systemui/statusbar/SignalClusterView;)I

    move-result v2

    goto/16 :goto_5

    .line 920
    :cond_c
    const-string/jumbo v2, "GONE"

    goto/16 :goto_6

    :cond_d
    move v2, v4

    .line 922
    goto :goto_7

    :cond_e
    move v2, v4

    .line 923
    goto :goto_8

    :cond_f
    move v2, v4

    .line 924
    goto :goto_9

    :cond_10
    move v3, v4

    .line 925
    goto :goto_a
.end method

.method public populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 931
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 933
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    :cond_0
    return-void
.end method

.method public setIconTint(IFLandroid/graphics/Rect;)V
    .locals 4
    .param p1, "tint"    # I
    .param p2, "darkIntensity"    # F
    .param p3, "tintArea"    # Landroid/graphics/Rect;

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    .line 951
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    invoke-static {p3, v1, p2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v1

    .line 952
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDark:Landroid/widget/ImageView;

    .line 950
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap1(Lcom/android/systemui/statusbar/SignalClusterView;FLandroid/view/View;Landroid/view/View;)V

    .line 953
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap4(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 954
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoaming:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoaming:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap4(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 956
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityIn:Landroid/widget/ImageView;

    .line 957
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityIn:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    .line 956
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap4(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 958
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityOut:Landroid/widget/ImageView;

    .line 959
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityOut:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    .line 958
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap4(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 961
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDataActivityView:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap4(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 962
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoamingView:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap4(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 964
    return-void
.end method

.method public setViews(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 839
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    .line 840
    const v1, 0x7f0a01a6

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    .line 841
    const v1, 0x7f0a01a7

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDark:Landroid/widget/ImageView;

    .line 842
    const v1, 0x7f0a01a9

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    .line 843
    const v1, 0x7f0a01a4

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoaming:Landroid/widget/ImageView;

    .line 844
    const v1, 0x7f0a01a1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityIn:Landroid/widget/ImageView;

    .line 845
    const v1, 0x7f0a01a3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityOut:Landroid/widget/ImageView;

    .line 847
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/SignalDrawable;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/SignalDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 848
    new-instance v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDark:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;-><init>(Landroid/content/Context;)V

    .line 849
    .local v0, "drawable":Lcom/android/systemui/statusbar/phone/SignalDrawable;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setDarkIntensity(F)V

    .line 850
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDark:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 852
    const v1, 0x7f0a01a5

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/AnimatedImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoamingView:Lcom/android/systemui/statusbar/AnimatedImageView;

    .line 853
    const v1, 0x7f0a01a2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/AnimatedImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDataActivityView:Lcom/android/systemui/statusbar/AnimatedImageView;

    .line 855
    return-void
.end method
