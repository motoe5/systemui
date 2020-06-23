.class public Landroid/support/v17/leanback/widget/SearchBar;
.super Landroid/widget/RelativeLayout;
.source "SearchBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/SearchBar$1;,
        Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;,
        Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field mAutoStartRecognition:Z

.field private mBackgroundAlpha:I

.field private mBackgroundSpeechAlpha:I

.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mBadgeView:Landroid/widget/ImageView;

.field private mBarBackground:Landroid/graphics/drawable/Drawable;

.field private mBarHeight:I

.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private mHint:Ljava/lang/String;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mListening:Z

.field private mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

.field mRecognizing:Z

.field mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

.field mSearchQuery:Ljava/lang/String;

.field mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

.field mSoundMap:Landroid/util/SparseIntArray;

.field mSoundPool:Landroid/media/SoundPool;

.field mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

.field private mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

.field private mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

.field private final mTextColor:I

.field private final mTextColorSpeechMode:I

.field private final mTextHintColor:I

.field private final mTextHintColorSpeechMode:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/SearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/SearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 166
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$1;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/SearchBar$1;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    .line 119
    iput-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 135
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    .line 137
    iput-boolean v5, p0, Landroid/support/v17/leanback/widget/SearchBar;->mAutoStartRecognition:Z

    .line 151
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSoundMap:Landroid/util/SparseIntArray;

    .line 152
    iput-boolean v5, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    .line 167
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 171
    .local v2, "r":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 172
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Landroid/support/v17/leanback/R$layout;->lb_search_bar:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 174
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_search_bar_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBarHeight:I

    .line 175
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 176
    iget v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBarHeight:I

    .line 175
    invoke-direct {v1, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 177
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xa

    invoke-virtual {v1, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 178
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/SearchBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/SearchBar;->setBackgroundColor(I)V

    .line 180
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/SearchBar;->setClipChildren(Z)V

    .line 182
    const-string/jumbo v3, ""

    iput-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    .line 184
    const-string/jumbo v3, "input_method"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 183
    iput-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 186
    sget v3, Landroid/support/v17/leanback/R$color;->lb_search_bar_text_speech_mode:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextColorSpeechMode:I

    .line 187
    sget v3, Landroid/support/v17/leanback/R$color;->lb_search_bar_text:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextColor:I

    .line 189
    sget v3, Landroid/support/v17/leanback/R$integer;->lb_search_bar_speech_mode_background_alpha:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBackgroundSpeechAlpha:I

    .line 190
    sget v3, Landroid/support/v17/leanback/R$integer;->lb_search_bar_text_mode_background_alpha:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBackgroundAlpha:I

    .line 192
    sget v3, Landroid/support/v17/leanback/R$color;->lb_search_bar_hint_speech_mode:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextHintColorSpeechMode:I

    .line 193
    sget v3, Landroid/support/v17/leanback/R$color;->lb_search_bar_hint:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextHintColor:I

    .line 195
    const-string/jumbo v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mAudioManager:Landroid/media/AudioManager;

    .line 196
    return-void
.end method

.method private isVoiceMode()Z
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->isFocused()Z

    move-result v0

    return v0
.end method

.method private loadSounds(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 797
    const/4 v3, 0x4

    new-array v1, v3, [I

    .line 798
    sget v3, Landroid/support/v17/leanback/R$raw;->lb_voice_failure:I

    aput v3, v1, v2

    .line 799
    sget v3, Landroid/support/v17/leanback/R$raw;->lb_voice_open:I

    aput v3, v1, v6

    .line 800
    sget v3, Landroid/support/v17/leanback/R$raw;->lb_voice_no_input:I

    const/4 v4, 0x2

    aput v3, v1, v4

    .line 801
    sget v3, Landroid/support/v17/leanback/R$raw;->lb_voice_success:I

    const/4 v4, 0x3

    aput v3, v1, v4

    .line 803
    .local v1, "sounds":[I
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, v1, v2

    .line 804
    .local v0, "sound":I
    iget-object v4, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSoundMap:Landroid/util/SparseIntArray;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v5, p1, v0, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 803
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 806
    .end local v0    # "sound":I
    :cond_0
    return-void
.end method

.method private play(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 809
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v17/leanback/widget/SearchBar$11;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/widget/SearchBar$11;-><init>(Landroid/support/v17/leanback/widget/SearchBar;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 817
    return-void
.end method

.method private updateHint()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 528
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$string;->lb_search_bar_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 530
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->isVoiceMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 531
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$string;->lb_search_bar_hint_with_title_speech:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTitle:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 538
    :cond_0
    :goto_0
    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mHint:Ljava/lang/String;

    .line 539
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    if-eqz v1, :cond_1

    .line 540
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mHint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/SearchEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 542
    :cond_1
    return-void

    .line 533
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$string;->lb_search_bar_hint_with_title:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTitle:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 535
    :cond_3
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->isVoiceMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$string;->lb_search_bar_hint_speech:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method hideNativeKeyboard()V
    .locals 3

    .prologue
    .line 505
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SearchEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 506
    const/4 v2, 0x0

    .line 505
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 507
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 336
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 338
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSoundPool:Landroid/media/SoundPool;

    .line 339
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/SearchBar;->loadSounds(Landroid/content/Context;)V

    .line 340
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->stopRecognition()V

    .line 346
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 347
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 348
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 200
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 202
    sget v2, Landroid/support/v17/leanback/R$id;->lb_search_bar_items:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/SearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 203
    .local v0, "items":Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBarBackground:Landroid/graphics/drawable/Drawable;

    .line 205
    sget v2, Landroid/support/v17/leanback/R$id;->lb_search_text_editor:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/SearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/SearchEditText;

    iput-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    .line 206
    sget v2, Landroid/support/v17/leanback/R$id;->lb_search_bar_badge:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/SearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBadgeView:Landroid/widget/ImageView;

    .line 207
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBadgeView:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$2;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/SearchBar$2;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 221
    new-instance v1, Landroid/support/v17/leanback/widget/SearchBar$3;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/SearchBar$3;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    .line 227
    .local v1, "mOnTextChangedRunnable":Ljava/lang/Runnable;
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$4;

    invoke-direct {v3, p0, v1}, Landroid/support/v17/leanback/widget/SearchBar$4;-><init>(Landroid/support/v17/leanback/widget/SearchBar;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 248
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    .line 249
    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$5;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/SearchBar$5;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    .line 248
    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchEditText;->setOnKeyboardDismissListener(Landroid/support/v17/leanback/widget/SearchEditText$OnKeyboardDismissListener;)V

    .line 258
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$6;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/SearchBar$6;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 304
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    const-string/jumbo v3, "EscapeNorth=1;VoiceDismiss=1;"

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchEditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 306
    sget v2, Landroid/support/v17/leanback/R$id;->lb_search_bar_speech_orb:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/SearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/SpeechOrbView;

    iput-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    .line 307
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$7;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/SearchBar$7;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOnOrbClickedListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$8;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/SearchBar$8;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 330
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->hasFocus()Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/SearchBar;->updateUi(Z)V

    .line 331
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->updateHint()V

    .line 332
    return-void
.end method

.method playSearchFailure()V
    .locals 1

    .prologue
    .line 824
    sget v0, Landroid/support/v17/leanback/R$raw;->lb_voice_failure:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/SearchBar;->play(I)V

    .line 825
    return-void
.end method

.method playSearchOpen()V
    .locals 1

    .prologue
    .line 820
    sget v0, Landroid/support/v17/leanback/R$raw;->lb_voice_open:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/SearchBar;->play(I)V

    .line 821
    return-void
.end method

.method playSearchSuccess()V
    .locals 1

    .prologue
    .line 832
    sget v0, Landroid/support/v17/leanback/R$raw;->lb_voice_success:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/SearchBar;->play(I)V

    .line 833
    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 1
    .param p1, "viewId"    # I

    .prologue
    .line 837
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setNextFocusDownId(I)V

    .line 838
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchEditText;->setNextFocusDownId(I)V

    .line 839
    return-void
.end method

.method setSearchQueryInternal(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 370
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    return-void

    .line 373
    :cond_0
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    .line 375
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;->onSearchQueryChange(Ljava/lang/String;)V

    .line 378
    :cond_1
    return-void
.end method

.method showNativeKeyboard()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v17/leanback/widget/SearchBar$9;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/SearchBar$9;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 522
    return-void
.end method

.method public startRecognition()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 601
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    if-eqz v3, :cond_0

    return-void

    .line 602
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_1

    .line 603
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->requestFocus()Z

    .line 605
    :cond_1
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    if-eqz v3, :cond_2

    .line 606
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/SearchEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    invoke-interface {v3}, Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;->recognizeSpeech()V

    .line 609
    iput-boolean v5, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    .line 610
    return-void

    .line 612
    :cond_2
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v3, :cond_3

    return-void

    .line 613
    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "android.permission.RECORD_AUDIO"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 614
    .local v1, "res":I
    if-eqz v1, :cond_5

    .line 615
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_4

    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

    if-eqz v3, :cond_4

    .line 616
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

    invoke-interface {v3}, Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;->requestAudioPermission()V

    .line 617
    return-void

    .line 619
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "android.permission.RECORD_AUDIO required for search"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 624
    :cond_5
    iput-boolean v5, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    .line 626
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SearchBar;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v3, v4, v6, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    .line 633
    .local v2, "result":I
    if-eq v2, v5, :cond_6

    .line 634
    sget-object v3, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Could not get audio focus"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_6
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 639
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 641
    .local v0, "recognizerIntent":Landroid/content/Intent;
    const-string/jumbo v3, "android.speech.extra.LANGUAGE_MODEL"

    .line 642
    const-string/jumbo v4, "free_form"

    .line 641
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    const-string/jumbo v3, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 645
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    new-instance v4, Landroid/support/v17/leanback/widget/SearchBar$10;

    invoke-direct {v4, p0}, Landroid/support/v17/leanback/widget/SearchBar$10;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v3, v4}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 763
    iput-boolean v5, p0, Landroid/support/v17/leanback/widget/SearchBar;->mListening:Z

    .line 764
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v3, v0}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 765
    return-void
.end method

.method public stopRecognition()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 567
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    if-nez v0, :cond_0

    return-void

    .line 571
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mHint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 574
    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    .line 576
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 578
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->showNotListening()V

    .line 580
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mListening:Z

    if-eqz v0, :cond_3

    .line 581
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 582
    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mListening:Z

    .line 583
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 586
    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, v2}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 587
    return-void
.end method

.method submitQuery()V
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;->onSearchQuerySubmit(Ljava/lang/String;)V

    .line 794
    :cond_0
    return-void
.end method

.method toggleRecognition()V
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->stopRecognition()V

    .line 550
    :goto_0
    return-void

    .line 548
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->startRecognition()V

    goto :goto_0
.end method

.method updateUi(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 768
    if-eqz p1, :cond_1

    .line 769
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBarBackground:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBackgroundSpeechAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 770
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->isVoiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextHintColorSpeechMode:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setTextColor(I)V

    .line 772
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextHintColorSpeechMode:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setHintTextColor(I)V

    .line 783
    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->updateHint()V

    .line 784
    return-void

    .line 774
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextColorSpeechMode:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setTextColor(I)V

    .line 775
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextHintColorSpeechMode:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setHintTextColor(I)V

    goto :goto_0

    .line 778
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBarBackground:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBackgroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 779
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setTextColor(I)V

    .line 780
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextHintColor:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setHintTextColor(I)V

    goto :goto_0
.end method
